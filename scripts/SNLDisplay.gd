# SNLDisplay.gd
class_name SNLDisplay
extends Control

# Signaux
signal continue_requested()

# Enums
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }
enum TextState { IDLE, ANIMATING, COMPLETED }

# Exports
@export var text_speed: float = 0.02
@export var continue_button: Button

# Variables
var line_label := load("res://scenes/snl_scene/snl_label.tscn") as PackedScene
var label_list: Array[RichTextLabel] = []
var current_label: RichTextLabel
var current_text_state: TextState = TextState.IDLE
var current_char_index: int = 0
var current_text: String = ""
var timer: float = 0.0

@onready var story_vbox_container = $MarginContainer/ScrollContainer/VBoxContainer

func _ready() -> void:
	_connect_signals()

func _connect_signals() -> void:
	if continue_button:
		continue_button.connect("pressed", Callable(self, "_on_continue_button_pressed"))

func display_text(text: String, style: DisplayStyle) -> void:
	match style:
		DisplayStyle.SNL:
			_display_snl(text)
		DisplayStyle.DYNAMIC_SNL:
			_display_dynamic_snl(text)

func _display_snl(text: String) -> void:
	print("Displaying SNL text")
	var label = line_label.instantiate()
	story_vbox_container.add_child(label)
	label_list.append(label)
	current_label = label
	current_label._add_full_text(text)
	_start_text_animation()

func _display_dynamic_snl(text: String) -> void:
	print("Displaying Dynamic SNL text")
	# Pour le Dynamic SNL, on peut réutiliser la logique SNL avec des effets différents
	_display_snl(text)

func _start_text_animation() -> void:
	if current_label:
		current_text = current_label.full_text
		current_char_index = 0
		current_text_state = TextState.ANIMATING
		if continue_button:
			continue_button.visible = false

func _process(delta: float) -> void:
	if current_text_state == TextState.ANIMATING and current_label:
		timer += delta
		if timer >= text_speed:
			timer = 0.0
			current_char_index += 1
			current_label.text = current_text.substr(0, current_char_index)
			
			if current_char_index >= current_text.length():
				current_text_state = TextState.COMPLETED
				if continue_button:
					continue_button.visible = true

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if current_text_state == TextState.ANIMATING:
			_complete_text_immediately()
		elif current_text_state == TextState.COMPLETED:
			emit_signal("continue_requested")

func _complete_text_immediately() -> void:
	if current_label:
		current_label.text = current_text
		current_text_state = TextState.COMPLETED
		if continue_button:
			continue_button.visible = true

func _on_continue_button_pressed() -> void:
	if current_text_state == TextState.ANIMATING:
		_complete_text_immediately()
	else:
		print("Continue button pressed, emitting continue_requested signal")
		emit_signal("continue_requested")

func clear_display() -> void:
	for label in label_list:
		if is_instance_valid(label):
			label.queue_free()
	label_list.clear()
	current_label = null
	current_text_state = TextState.IDLE
