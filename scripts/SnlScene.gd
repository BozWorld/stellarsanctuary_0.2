class_name SnlScene
extends Control

# Signals
signal story_loaded(success: bool)
signal transition_requested(style: String)

# Enums
enum DisplayStyle { SNL , DYNAMIC_SNL, ADV}
enum TextState {
	IDLE,
	ANIMATING,
	COMPLETED
}

# Constants
const SAVE_PATH := "res://saves/save.save"

# Exported Variables
@export var text_label: RichTextLabel
@export var continue_button: Button
@export var close_button: Button
@export var text_speed: float = 0.02

var line_label := load("res://scenes/snl_scene/snl_label.tscn") as PackedScene
var label_list: Array[RichTextLabel] = []
var current_label: RichTextLabel
@onready var story_vbox_container = $MarginContainer/ScrollContainer/VBoxContainer

# public Variables
var current_display_style: DisplayStyle = DisplayStyle.SNL
# Private Variables
var ink_player: InkPlayer
var current_text_state: TextState = TextState.IDLE
var current_char_index: int = 0
var current_text: String = ""
var timer: float = 0.0
var ratio: float = 0.0

func _ready() -> void:
	_initialize_ink_player()
	_connect_ui_signals()

#connecte les boutons de l'interface aux fonctions
func _connect_ui_signals() -> void:
	continue_button.connect("pressed", Callable(self, "_on_continue_button_pressed"))
	close_button.connect("pressed", Callable(self, "_on_close_button_pressed"))

#Crée le fichier ink et récupère le bon chapitre
func _initialize_ink_player() -> void:
	ink_player = InkPlayer.new()
	add_child(ink_player)
	ink_player.ink_file = load("res://INK/scene1_clean.json")
	ink_player.loads_in_background = true
	ink_player.connect("loaded", Callable(self, "_on_story_loaded"))
	ink_player.create_story()

func _on_story_loaded(success: bool) -> void:
	print("Story loaded: ", success)
	if success:
		_continue_story()
	else:
		print("Failed to load the story")

func _continue_story() -> void:
	print("player has choice to continue" + str(ink_player.has_choices))
	print("player can continue" + str(ink_player.can_continue))
	if ink_player.has_choices:
		ink_player.choose_choice_index(0)
	if ink_player.can_continue:
		var current_txt = ink_player.continue_story()
		_handle_ink_tags(current_txt)
		_display_text(current_txt)
	else:
		_clear_text()

func _handle_ink_tags(text: String) -> void:
	print("Handling ink tags")
	var tags = ink_player.get_current_tags()
	print("Current tags: ", tags)
	if "ADV" in tags:
		current_display_style = DisplayStyle.ADV
		emit_signal("transition_requested", "ADV")
	elif "SNL" in tags:
		print("Switching to SNL display style")
		current_display_style = DisplayStyle.SNL
		# emit_signal("transition_requested", "SNL")

func _display_text(text: String) -> void:

	match current_display_style:
		DisplayStyle.SNL:
			_display_snl(text)
		DisplayStyle.DYNAMIC_SNL:
			_display_dynamic_snl(text)
		DisplayStyle.ADV:
			_display_adv(text)

func _display_adv(text: String) -> void:
	print("Displaying ADV text")
	text_label.text = text.replace("`", "\n")
	_animate_text()

func _display_dynamic_snl(text: String) -> void:
	print("Displaying Dynamic SNL text")
	text_label.text = text.replace("`", "\n")
	_animate_text()

func _display_snl(text: String) -> void:
	print("Displaying SNL text")
	var label = line_label.instantiate()
	story_vbox_container.add_child(label)
	label_list.append(label)
	current_label = label
	current_label._add_full_text(text.replace("`", "\n"))

	current_text = current_label.full_text
	current_char_index = 0
	current_text_state = TextState.ANIMATING
	continue_button.visible = false

func _animate_text() -> void:
	print("Animating text")
	current_text = current_label.full_text
	current_char_index = 0
	current_text_state = TextState.ANIMATING
	continue_button.visible = false

func _process(delta: float) -> void:
	if current_text_state == TextState.ANIMATING:
		timer += delta
		if timer >= text_speed:
			timer = 0.0
			current_char_index += 1
			current_label.text = current_text.substr(0, current_char_index)
			
			if current_char_index >= current_text.length():
				current_text_state = TextState.COMPLETED
				continue_button.visible = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if current_text_state == TextState.ANIMATING:
			current_label.text = current_text
			current_text_state = TextState.COMPLETED
			call_deferred("_set_continue_indicator_position")
			continue_button.visible = true
		elif current_text_state == TextState.COMPLETED:
			_continue_story()

func _clear_text() -> void:
	print("Clearing text")
	text_label.text = ""

func _on_continue_button_pressed() -> void:
	print("Continue button pressed")
	if current_text_state == TextState.ANIMATING:
		current_label.text = current_text
		current_text_state = TextState.COMPLETED
		continue_button.visible = true
	else:
		_continue_story()

func _on_close_button_pressed() -> void:
	print("Close button pressed")
	# Handle the close button logic here
	pass

func _set_continue_indicator_position() -> void:
	var visible_lines = current_label.get_visible_line_count()
	if visible_lines <= 0:
		return
	
	var last_line_index = visible_lines 

	var line_range = current_label.get_line_range(last_line_index)

	var last_char_position = line_range.y

	var line_position = current_label.get_line_offset(last_line_index)

	var text_size = current_label.get_content_width()
	var button_x = current_label.global_position.x + text_size + 10
	var button_y = current_label.global_position.y + line_position + current_label.get_content_height() / 2

	continue_button.global_position = Vector2(button_x, button_y)

func _emit_story_loaded_signal(success: bool) -> void:
	print("Emitting story loaded signal")
	emit_signal("story_loaded", success)
