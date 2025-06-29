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

# Variables d'état
var current_display_style: DisplayStyle = DisplayStyle.SNL
var current_display_node: Control

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
	# Connecte les signaux du loader
	ink_story_loader.story_loaded.connect(_on_story_loaded)
	ink_story_loader.story_continued.connect(_on_story_continued)
	ink_story_loader.can_continue_section.connect(_on_can_continue_section)
	# Connecte les signaux du parser
	text_parser.display_style_changed.connect(_on_display_style_changed)
	text_parser.text_processed.connect(_on_text_processed)
	
	# Connecte les signaux des displays
	snl_display.continue_requested.connect(_continue_story)
	adv_display.continue_requested.connect(_continue_story)

func _on_story_loaded(success: bool) -> void:
	emit_signal("story_loaded", success)
	if success:
		_continue_story()

func _on_story_continued(text: String) -> void:
	# Envoie le texte brut au parser
	print("Continuing story with text: ", text)
	print("current tags display" + str(ink_story_loader._give_tag()))
	text_parser.process_text(text)

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
