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
# Variables d'état
var current_display_style: DisplayStyle = DisplayStyle.SNL
var current_display_node: Control
@export var enable_debug: bool = false

func _ready() -> void:
	_setup_display_nodes()
	_connect_signals()
	ink_story_loader.load_story()

func _setup_display_nodes() -> void:
	# Cache tous les displays par défaut
	snl_display.visible = false
	adv_display.visible = false
	
	# Définit le display initial
	_switch_to_display(current_display_style)

func _connect_signals() -> void:
	print("Connecting signals in DisplayStyleManager")
	# Connecte les signaux du loader
	ink_story_loader.story_loaded.connect(_on_story_loaded)
	ink_story_loader.story_step.connect(_on_story_step)
	text_segment_manager.segment_ready.connect(_on_segment_ready)
	text_segment_manager.all_segments_completed.connect(_on_all_segments_completed)
	tag_processor.command_queue_drained.connect(_on_commands_done)
	# ink_story_loader.story_continued.connect(_on_story_continued)
	# ink_story_loader.can_continue_section.connect(_on_can_continue_section)
	# text_parser.display_style_changed.connect(_on_display_style_changed)
	# text_parser.text_processed.connect(_on_text_processed)
	
	# Connecte les signaux du parser
	
	# Connecte les signaux du TextSegmentManager
	# text_segment_manager.page_break_requested.connect(_on_page_break_requested)
	
	# # Connecte les signaux des displays
	# snl_display.continue_requested.connect(_on_continue_requested)
	# adv_display.continue_requested.connect(_on_continue_requested)

func _on_story_loaded(success: bool) -> void:
	emit_signal("story_loaded", success)
	if success:
		_continue_story()

func _on_story_step(text: String, tags: Array):
	tag_processor.enqueue_tags(tags)

	if text.strip_edges() != "":
		# Traite le texte avec les tags
		text_segment_manager.process_text_with_tags(text, [])
		print("Processed text with tags: ", text, tags)
	else:
		# Si le texte est vide, on continue l'histoire
		_continue_story_if_possible()

func _on_commands_done():
	if not text_segment_manager.has_more_segments() and text_segment_manager.get_total_segments() == 0:
		_continue_story_if_possible()

func _continue_story_if_possible() -> void:
	if ink_story_loader.can_continue():
		_continue_story()

func _on_story_continued(text: String) -> void:
	# Envoie le texte brut au TextSegmentManager avec les tags
	var tags = ink_story_loader._give_tag()
	# print("Current tags: ", tags)

	# Utilise le TextSegmentManager pour traiter le texte avec les tags
	text_segment_manager.process_text_with_tags(text, tags)

func _on_display_style_changed(new_style: DisplayStyle) -> void:
	if new_style != current_display_style:
		transition_manager.transition_to_style(current_display_style, new_style)
		_switch_to_display(new_style)
		current_display_style = new_style

func _on_text_processed(processed_text: String, display_style: DisplayStyle) -> void:
	var tags = ink_story_loader._give_tag()
	if "ADV" in tags:
		adv_display.display_text(processed_text)
		emit_signal("transition_requested", "ADV")
	elif "SNL" in tags:
		print("Switching to SNL display style")
		snl_display.display_text(processed_text, display_style)
	if tags.is_empty():
		# Si aucun tag n'est trouvé, on utilise le style par défaut
		snl_display.display_text(processed_text, current_display_style)
			
func _on_can_continue_section(success: bool) -> void:
	if not success:
		return
	# if ink_story_loader.has_choices:
	# 	print("Player has choices to continue")
	# 	ink_story_loader.choose_choice_index(0)
	# if ink_story_loader.can_continue():
	# 	# Si on peut continuer, on affiche le texte suivant
	# 	print("Continuing story...")
	# 	snl_display.display_text(ink_story_loader.get_current_text(), current_display_style)
	else:
		snl_display.clear_display()
		_continue_story()
	return
	# Si on peut continuer, on affiche le texte suivant
	
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

func _on_page_break_requested() -> void:
	_debug("Page break signal")
	# Efface l'affichage pour un nouveau page
	snl_display.clear_display()
	adv_display.clear_display()

func _on_all_segments_completed() -> void:
	_debug("All segments completed")
	# Tous les segments sont terminés, on peut continuer l'histoire
	_continue_story()

func _on_continue_requested() -> void:
	_debug("Continue pressed")
	# Vérifie s'il y a encore des segments à afficher
	if text_segment_manager.has_more_segments():
		_debug("Advance to next segment")
		text_segment_manager.advance_to_next_segment()
	else:
		_continue_story()

func _debug(msg: String) -> void:
	if enable_debug:
		print("[DisplayStyleManager] ", msg)
