# Ink_Manager.gd
class_name InkManager
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
@export var textSpeed: float = 0.02

var lineLabel := load("res://scenes/snl_scene/snl_label.tscn") as PackedScene
var _label_list_: Array[RichTextLabel] = []
var currentLabel: RichTextLabel
@onready var _story_vbox_container = $MarginContainer/ScrollContainer/VBoxContainer

# public Variables
var current_display_style: DisplayStyle = DisplayStyle.SNL
# Private Variables
var _ink_player: InkPlayer
var _current_text_state: TextState = TextState.IDLE
var _current_char_index: int = 0
var _current_text: String = ""
var _timer: float = 0.0
var ratio: float = 0.0

func _ready() -> void:
	_initialize_ink_player()
	_connect_ui_signals()

func _connect_ui_signals() -> void:
	continue_button.connect("pressed", Callable(self, "_on_continue_button_pressed"))
	close_button.connect("pressed", Callable(self, "_on_close_button_pressed"))

func _initialize_ink_player() -> void:
	_ink_player = InkPlayer.new()
	add_child(_ink_player)
	_ink_player.ink_file = load("res://INK/introduction.json")
	_ink_player.loads_in_background = true
	_ink_player.connect("loaded", Callable(self, "_on_story_loaded"))
	_ink_player.create_story()

func _on_story_loaded(success: bool) -> void:
	print("Story loaded: ", success)
	if success:
		_continue_story()
	else:
		print("Failed to load the story")

func _continue_story() -> void:
	print("Continuing story")
	if _ink_player.can_continue:
		var current_text = _ink_player.continue_story()
		_handle_ink_tags(current_text)
		_display_text(current_text)
	else:
		_clear_text()

func _handle_ink_tags(text: String) -> void:
	print("Handling ink tags")
	if "[ADV]" in text:
		current_display_style = DisplayStyle.ADV
		emit_signal("transition_requested", "ADV")
	elif "[SNL]" in text:
		current_display_style = DisplayStyle.SNL
		emit_signal("transition_requested", "SNL")

func _display_text(text: String) -> void:
	print("Displaying text")
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
	var label = lineLabel.instantiate()
	_story_vbox_container.add_child(label)
	_label_list_.append(label)
	currentLabel = label
	currentLabel._add_full_text(text.replace("`", "\n"))

	_current_text = currentLabel.full_text
	_current_char_index = 0
	_current_text_state = TextState.ANIMATING
	continue_button.visible = false

func _animate_text() -> void:
	print("Animating text")
	_current_text = currentLabel.full_text
	_current_char_index = 0
	_current_text_state = TextState.ANIMATING
	continue_button.visible = false

func _process(delta: float) -> void:
	if _current_text_state == TextState.ANIMATING:
		_timer += delta
		if _timer >= textSpeed:
			_timer = 0.0
			_current_char_index += 1
			currentLabel.text = _current_text.substr(0, _current_char_index)
			
			if _current_char_index >= _current_text.length():
				_current_text_state = TextState.COMPLETED
				_set_continue_indicator_position()  # repositionne l'indicateur
				continue_button.visible = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if _current_text_state == TextState.ANIMATING:
			currentLabel.text = _current_text
			_current_text_state = TextState.COMPLETED
			call_deferred("_set_continue_indicator_position")
			continue_button.visible = true
		elif _current_text_state == TextState.COMPLETED:
			_continue_story()

func _clear_text() -> void:
	print("Clearing text")
	text_label.text = ""

func _on_continue_button_pressed() -> void:
	print("Continue button pressed")
	if _current_text_state == TextState.ANIMATING:
		currentLabel.text = _current_text
		_current_text_state = TextState.COMPLETED
		continue_button.visible = true
	else:
		_continue_story()

func _on_close_button_pressed() -> void:
	print("Close button pressed")
	# Handle the close button logic here
	pass

# func _set_continue_indicator_position() -> void:
#     var font: Font = currentLabel.get_theme_font("normal_font")
#     var lines: Array = currentLabel.text.split("\n")
#     if lines.size() == 0:
#         return
#     var last_line: String = lines[lines.size() - 1]
#     # Mesurer la largeur de la dernière ligne avec la police utilisée.
#     var last_line_width: float = font.get_string_size(last_line).x
#     var label_global_pos: Vector2 = currentLabel.get_global_position()
#     var line_height: float = font.get_string_size("A").y
    
#     # On positionne l'indicateur 10 pixels après la fin de la dernière ligne.
#     var new_pos: Vector2 = Vector2(label_global_pos.x + last_line_width + 10,
#                                    label_global_pos.y + (lines.size() - 1) * line_height)
    
#     continue_button.global_position = new_pos

func _emit_story_loaded_signal(success: bool) -> void:
	print("Emitting story loaded signal")
	emit_signal("story_loaded", success)
