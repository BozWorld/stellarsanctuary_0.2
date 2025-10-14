# DisplayStyleManager.gd
extends Control
class_name DisplayStyleManager

# Signaux principaux
signal story_loaded(success: bool)

# Enums
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }

# === Composants ===
@onready var ink_story_loader = $InkStoryLoader
@onready var tag_processor = $TagCommandProcessor
@onready var text_manager = $TextSegmentManager
@onready var snl_display = $SNLDisplay
@onready var adv_display = $ADVDisplay

# === DONNÉES PERSONNAGES ===
var _character_resources: Dictionary = {}
var _current_speaker: String = ""
var _current_speaker_color: Color = Color.WHITE

# === ÉTAT ===
enum ProcessingState { IDLE, PROCESSING_COMMANDS, PROCESSING_TEXT, WAITING_USER }
var current_state: ProcessingState = ProcessingState.IDLE
var current_story_step: Dictionary = {}
var current_display_style: DisplayStyle = DisplayStyle.SNL

func _ready() -> void:
	_load_character_resources()
	_connect_signals()
	_update_display_visibility()
	ink_story_loader.load_story()

func _connect_signals():
	ink_story_loader.story_step.connect(_on_story_step)
	tag_processor.command_queue_drained.connect(_on_commands_completed)
	text_manager.all_segments_completed.connect(_on_text_completed)
	text_manager.segment_ready.connect(_on_segment_ready)
	snl_display.continue_requested.connect(_on_user_continue)
	adv_display.continue_requested.connect(_on_user_continue)

# === POINT D'ENTREE UNIQUE ===
func _on_story_step(text: String, tags: Array):
	print("[DSM] New story step - Text: '", text.substr(0,50), "...' tags: ",tags)
	
	current_story_step = {"text": text, "tags": tags}
	
	var command_tags = []
	var text_control_tags = []

	for tag in tags:
		if tag in ["segment_break", "new_page"]:
			text_control_tags.append(tag)
		else:
			command_tags.append(tag)
		
	if command_tags.size() > 0:
		current_state = ProcessingState.PROCESSING_COMMANDS
		tag_processor.enqueue_tags(command_tags)
		return
		
	if not text.strip_edges().is_empty():
		current_state = ProcessingState.PROCESSING_TEXT
		text_manager.process_text_with_tags(text, text_control_tags, current_display_style)
	else:
		_continue_story()

func _continue_story():
	current_state = ProcessingState.IDLE
	await get_tree().process_frame
	ink_story_loader.continue_story()

# === TRAITEMENT COMMANDS ===
func _on_commands_completed():
	print("[DSM] Command processing completed.")
	var text = current_story_step.get("text", "")
	var tags = current_story_step.get("tags", [])

	var text_control_tags = []
	for tag in tags:
		if tag in ["segment_break", "new_page"]:
			text_control_tags.append(tag)

	if not text.strip_edges().is_empty():
		current_state = ProcessingState.PROCESSING_TEXT
		text_manager.process_text_with_tags(text, text_control_tags, current_display_style)
	else:
		_continue_story()

# === GESTION DES SEGMENTS ===
func _on_segment_ready(segment_text: String, segment_type: int, display_style: DisplayStyle):
	print("[DSM] Segment ready - Style: ", DisplayStyle.keys()[display_style], " Type: ", TextSegmentManager.SegmentType.keys()[segment_type])
	
	match display_style:
		DisplayStyle.SNL, DisplayStyle.DYNAMIC_SNL:
			_handle_snl_segment(segment_text, segment_type)
		DisplayStyle.ADV:
			_handle_adv_segment(segment_text, segment_type)

func _handle_snl_segment(segment_text: String, segment_type: int):
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

func _handle_adv_segment(segment_text: String, segment_type: int):
	match segment_type:
		TextSegmentManager.SegmentType.NEW_PAGE:
			adv_display.clear_display()
			text_manager.advance_to_next_segment()
		TextSegmentManager.SegmentType.SEGMENT_BREAK:
			text_manager.advance_to_next_segment()
		TextSegmentManager.SegmentType.NORMAL:
			adv_display.display_text(segment_text)
			current_state = ProcessingState.WAITING_USER

func _on_text_completed():
	current_state = ProcessingState.IDLE
	continue_story_public()

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

# === CHANGEMENT DE STYLE ===
func switch_to_style(new_style: DisplayStyle) -> void:
	if current_display_style == new_style:
		return
	print("[DSM] Switching style from %s to %s" % [DisplayStyle.keys()[current_display_style], DisplayStyle.keys()[new_style]])
	current_display_style = new_style
	_update_display_visibility()

func _update_display_visibility() -> void:
	if snl_display:
		snl_display.visible = (current_display_style == DisplayStyle.SNL or current_display_style == DisplayStyle.DYNAMIC_SNL)
	if adv_display:
		adv_display.visible = (current_display_style == DisplayStyle.ADV)

# === CONTINUATION HISTOIRE ===
func continue_story_public():
	print("[DSM] Continuing story...")
	if current_state == ProcessingState.IDLE and ink_story_loader.can_continue():
		ink_story_loader.continue_story()

# === GESTION PERSONNAGES ===
func _load_character_resources() -> void:
	var character_files = _find_character_files("res://asset/")
	for file_path in character_files:
		var resource = load(file_path) as CharacterResource
		if resource and resource.character_name:
			_character_resources[resource.character_name] = resource

func _find_character_files(directory: String) -> Array[String]:
	var files: Array[String] = []
	var dir = DirAccess.open(directory)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			var full_path = directory + "/" + file_name
			if dir.current_is_dir() and not file_name.begins_with("."):
				files.append_array(_find_character_files(full_path))
			elif file_name.ends_with(".tres"):
				var resource = load(full_path)
				if resource is CharacterResource:
					files.append(full_path)
			file_name = dir.get_next()
	return files

func set_current_speaker(speaker_name: String) -> void:
	_current_speaker = speaker_name
	if _character_resources.has(speaker_name):
		var resource = _character_resources[speaker_name] as CharacterResource
		_current_speaker_color = resource.default_color
	else:
		_current_speaker_color = Color.WHITE
	
	# Mettre à jour l'affichage ADV
	if adv_display:
		adv_display.set_current_speaker(speaker_name, "#" + _current_speaker_color.to_html())

func set_speaker_color(color_hex: String) -> void:
	_current_speaker_color = Color(color_hex) if color_hex.begins_with("#") else Color.WHITE
	if adv_display:
		adv_display.set_text_color(color_hex)

func get_character_sprite(character_name: String, sprite_name: String = "") -> Texture2D:
	if not _character_resources.has(character_name):
		return null
	var resource = _character_resources[character_name] as CharacterResource
	return resource.get_sprite(sprite_name) if not sprite_name.is_empty() else (resource.sprite[0].texture if resource.sprite.size() > 0 else null)

func _debug(msg: String) -> void:
	print("[DSM DEBUG]: ", msg)
