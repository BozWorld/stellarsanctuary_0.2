# ADVDisplay.gd
class_name ADVDisplay
extends Control

# Signaux
signal continue_requested()

# Enums
enum TextState { IDLE, ANIMATING, COMPLETED }

# Exports
@export var text_label: RichTextLabel
@export var continue_button: Button
@export var text_speed: float = 0.02

# Variables
var current_text_state: TextState = TextState.IDLE
var current_char_index: int = 0
var current_text: String = ""
var timer: float = 0.0

func _ready() -> void:
	_connect_signals()

func _connect_signals() -> void:
	if continue_button:
		continue_button.connect("pressed", Callable(self, "_on_continue_button_pressed"))

func display_text(text: String) -> void:
	print("Displaying ADV text")
	if text_label:
		text_label.text = ""
		current_text = text
		_start_text_animation()

func _start_text_animation() -> void:
	current_char_index = 0
	current_text_state = TextState.ANIMATING
	if continue_button:
		continue_button.visible = false

func _process(delta: float) -> void:
	if current_text_state == TextState.ANIMATING and text_label:
		timer += delta
		if timer >= text_speed:
			timer = 0.0
			current_char_index += 1
			text_label.text = current_text.substr(0, current_char_index)
			
			if current_char_index >= current_text.length():
				current_text_state = TextState.COMPLETED
				if continue_button:
					continue_button.visible = true

func _input(event: InputEvent) -> void:
	if not visible:
		return
		
	if event is InputEventMouseButton and event.pressed:
		if current_text_state == TextState.ANIMATING:
			_complete_text_immediately()
		elif current_text_state == TextState.COMPLETED:
			emit_signal("continue_requested")

func _complete_text_immediately() -> void:
	if text_label:
		text_label.text = current_text
		current_text_state = TextState.COMPLETED
		if continue_button:
			continue_button.visible = true

func _on_continue_button_pressed() -> void:
	if current_text_state == TextState.ANIMATING:
		_complete_text_immediately()
	else:
		emit_signal("continue_requested")

func clear_display() -> void:
	if text_label:
		text_label.text = ""
	current_text_state = TextState.IDLE
