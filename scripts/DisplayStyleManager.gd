# DisplayStyleManager.gd
class_name DisplayStyleManager
extends Control

# Signaux principaux
signal story_loaded(success: bool)
signal transition_requested(style: String)

# Enums
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }

# Composants enfants
@onready var ink_story_loader = $InkStoryLoader
@onready var text_parser = $TextParser
@onready var snl_display = $SNLDisplay
@onready var adv_display = $ADVDisplay
@onready var transition_manager = $TransitionManager
@onready var text_segment_manager = $TextSegmentManager
@onready var tag_processor = $TagCommandProcessor
@export var enable_debug: bool = false

# Variables d'état
var current_display_style: DisplayStyle = DisplayStyle.SNL
var current_display_node: Control
var waiting_segments := false
var waiting_commands: = false
func _ready() -> void:
	_setup_display_nodes()
	_connect_signals()
	ink_story_loader.load_story()

func _setup_display_nodes() -> void:
	# Cache tous les displays par défaut
	snl_display.visible = false
	adv_display.visible = false

func _connect_signals() -> void:
	ink_story_loader.story_loaded.connect(_on_story_loaded)
	# ink_story_loader.got_tags.connect(_process_tags)
	ink_story_loader.story_step.connect(_on_story_step)
	text_segment_manager.segment_ready.connect(_on_segment_ready)
	text_segment_manager.all_segments_completed.connect(_on_all_segments_completed)
	tag_processor.command_queue_drained.connect(_on_commands_done)
	
func _on_story_loaded(success: bool) -> void:
	emit_signal("story_loaded", success)
	if success:
		_continue_story()

func _on_story_step(text: String, tags: Array):

	var groups = classify_tags(tags)
	for t in groups.layout:
		if t.contains("layout:"):
			var target = t.split(":")[1]
			if target in DisplayStyle.keys():
				target = DisplayStyle[target]
				if target != current_display_style:
					transition_manager.transition_to_style(current_display_style, target)
					current_display_style = target
		elif t == "show_window":
			self.visible = true
		elif t == "hide_window":
			self.visible = false
		elif t.contains("window:"):
			print("WINDOW TAG", t)

	if groups.commands.size() > 0:
		waiting_commands = true
		tag_processor.enqueue_tags(groups.commands)
	else:
		waiting_commands = false

	if text.strip_edges() != "" and waiting_commands == false:
		waiting_segments = true
		text_segment_manager.process_text_with_tags(text, groups.segmentation)
	else:
		waiting_segments = false

		_try_continue_when_idle()

func show_window() -> void:
	self.visible = true

func _on_commands_done():
	waiting_commands = false
	_try_continue_when_idle()

func _on_all_segments_completed():
	waiting_commands = false
	_try_continue_when_idle()

func _try_continue_when_idle():
	if not waiting_segments and not waiting_commands and ink_story_loader.can_continue():
		ink_story_loader.continue_story()

func _on_display_style_changed(new_style: DisplayStyle) -> void:
	if new_style != current_display_style:
		transition_manager.transition_to_style(current_display_style, new_style)
		_switch_to_display(new_style)
		current_display_style = new_style
	
func _switch_to_display(style: DisplayStyle) -> void:
	# Cache tous les displays
	if current_display_node:
		current_display_node.visible = false
	# Affiche le bon display
	match style:
		DisplayStyle.SNL, DisplayStyle.DYNAMIC_SNL:
			current_display_node = snl_display
		DisplayStyle.ADV:
			current_display_node = adv_display
	
	if current_display_node:
		current_display_node.visible = true

func _continue_story() -> void:
	ink_story_loader.continue_story()

# Nouvelles fonctions de callback pour TextSegmentManager
func _on_segment_ready(segment_text: String, segment_type: int) -> void:
	_debug("Segment type %s text='%.50s'" % [segment_type, segment_text])

	match segment_type:
		TextSegmentManager.SegmentType.NEW_PAGE:
			# NEW_PAGE : on vide l'écran et on attend l'input pour avancer (le segment texte peut être vide)
			_debug("NEW_PAGE -> clear display")
			snl_display.clear_display()
			# Si un texte est associé (rare), on l'affiche après nettoyage
			if segment_text.strip_edges() != "":
				snl_display.show_segment(segment_text)
		TextSegmentManager.SegmentType.SEGMENT_BREAK:
			# SEGMENT_BREAK : on n'efface pas, on n'affiche rien si pas de texte, on attend l'input pour passer au suivant
			_debug("SEGMENT_BREAK control segment")
			if segment_text.strip_edges() != "":
				snl_display.show_segment(segment_text, "#segment_break")
		TextSegmentManager.SegmentType.NORMAL:
			_debug("NORMAL segment")
			snl_display.show_segment(segment_text)

func _debug(msg: String) -> void:
	if enable_debug:
		print("[DisplayStyleManager] ", msg)

func classify_tags(tags):
	var segmentation: = []
	var commands: = []
	var layout: = []
	var meta: = []
	var style = null
	for tag in tags:
		if tag in ["segment_break", "new_page"]:
			segmentation.append(tag)
		elif tag.contains("layout:") or tag == "show_window" or  tag == "hide_window" or tag.contains("window:"):
			layout.append(tag)
		elif tag.contains("speaker:") or tag.contains("color:"):
			meta.append(tag)
		else:
			commands.append(tag)
	return {
		"segmentation" : segmentation,
		"commands": commands,
		"layout": layout,
		"meta": meta
	}


# func _continue_story_if_possible() -> void:
# 	if ink_story_loader.can_continue():
# 		_continue_story()

# func _on_story_continued(text: String) -> void:
# 	# Envoie le texte brut au TextSegmentManager avec les tags
# 	var tags = ink_story_loader._give_tag()
# 	# print("Current tags: ", tags)

# 	# Utilise le TextSegmentManager pour traiter le texte avec les tags
# 	text_segment_manager.process_text_with_tags(text, tags)

# func _on_page_break_requested() -> void:
# 	_debug("Page break signal")
# 	# Efface l'affichage pour un nouveau page
# 	snl_display.clear_display()
# 	adv_display.clear_display()

# func _on_continue_requested() -> void:
# 	_debug("Continue pressed")
# 	# Vérifie s'il y a encore des segments à afficher
# 	if text_segment_manager.has_more_segments():
# 		_debug("Advance to next segment")
# 		text_segment_manager.advance_to_next_segment()
# 	else:
		# _continue_story()
