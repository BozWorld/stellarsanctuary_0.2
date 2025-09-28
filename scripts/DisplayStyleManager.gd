# DisplayStyleManager.gd
extends Control
class_name DisplayStyleManager

# Signaux principaux
signal story_loaded(success: bool)
signal transition_requested(style: String)

# Enums
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }

# === Composants ===
@onready var ink_story_loader = $InkStoryLoader
@onready var tag_processor = $TagCommandProcessor
@onready var text_manager = $TextSegmentManager
@onready var snl_display = $SNLDisplay
@onready var adv_display = $ADVDisplay

# === ÉTAT ===
enum ProcessingState { IDLE, PROCESSING_COMMANDS, PROCESSING_TEXT, WAITING_USER }
var current_state: ProcessingState = ProcessingState.IDLE
var current_story_step: Dictionary = {}

func _ready() -> void:
	_connect_signals()
	ink_story_loader.load_story()

func _connect_signals():
	ink_story_loader.story_step.connect(_on_story_step)
	tag_processor.command_queue_drained.connect(_on_commands_completed)
	text_manager.all_segments_completed.connect(_on_text_completed)
	text_manager.segment_ready.connect(_on_segment_ready)
	snl_display.continue_requested.connect(_on_user_continue)

# === POINT D'ENTREE UNIQUE ===
func _on_story_step(text: String, tags: Array):
	print("[DSM] New story step - Text: '", text.substr(0,50), "...' tags: ",tags)
	
	#sauvegarde le step
	current_story_step = {"text": text, "tags": tags}

	# 1.classifier les tags
	var classified = _classify_tags(tags)

	# 2. traitement séquentiel
	if classified.commands.size() > 0:
		_process_commands(classified.commands)
	elif text.strip_edges() != "":
		_process_text(text, classified.segmentation)
	else:
		continue_story()

func _classify_tags(tags: Array) -> Dictionary:
	var commands = []
	var segmentation = []

	for tag in tags:
		if tag in ["segment_break", "new_page"]:
			segmentation.append(tag)
		else:
			commands.append(tag)
	
	return {"commands": commands, "segmentation": segmentation}
# === TRAITEMENT COMMANDS ===
func _process_commands(commands: Array):
	current_state = ProcessingState.PROCESSING_COMMANDS
	tag_processor.enqueue_tags(commands)

func _on_commands_completed():
	print("[DSM] Command processing completed.")
	var text = current_story_step.get("text", "")
	if text.strip_edges() != "":
		var classified = _classify_tags(current_story_step.get("tags", []))
		_process_text(text, classified.segmentation)
	else:
		continue_story()
# === TRAITEMENT TEXTE ===
func _process_text(text: String, segmentation_tags: Array):
	current_state = ProcessingState.PROCESSING_TEXT
	snl_display.visible = true
	text_manager.process_text_with_tags(text, segmentation_tags)

func _on_segment_ready(segment_text: String, segment_type: int):
	print("[DSM] Segment ready - Type: ", TextSegmentManager.SegmentType.keys()[segment_type], " Text: '", segment_text.substr(0,30), "...'")
	match segment_type:
		TextSegmentManager.SegmentType.NEW_PAGE:
			snl_display.clear_display()
			text_manager.advance_to_next_segment()
		TextSegmentManager.SegmentType.SEGMENT_BREAK:
			snl_display.force_continue_visible()
			text_manager.advance_to_next_segment()
		TextSegmentManager.SegmentType.NORMAL:
			snl_display.show_segment(segment_text)
			current_state = ProcessingState.WAITING_USER

func _on_text_completed():
	current_state = ProcessingState.IDLE
	continue_story()

# === INTERACTION UTILISATEUR ===
func _on_user_continue():
	print("[DSM] User requested to continue.")
	match current_state:
		ProcessingState.WAITING_USER:
			print("[DSM] Continuing from WAITING_USER state.")
			current_state = ProcessingState.PROCESSING_TEXT
			text_manager.advance_to_next_segment()
		ProcessingState.PROCESSING_TEXT:
			print("[DSM] User requested continue during text processing, advancing segment.")
			text_manager.advance_to_next_segment()

# === CONTINUATION HISTOIRE ===
func continue_story():
	print("[DSM] Continuing story...")
	if current_state == ProcessingState.IDLE and ink_story_loader.can_continue():
		ink_story_loader.continue_story()


func _debug(msg: String) -> void:
	print("[DSM DEBUG]: ", msg)
