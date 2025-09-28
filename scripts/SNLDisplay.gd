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


# Affiche un segment unique (appelé à chaque segment)

func show_segment(text: String, tag: String = "") -> void:
	if tag == "#new_page":
		clear_display()
	
	var label = line_label.instantiate()
	story_vbox_container.add_child(label)
	label_list.append(label)

	current_label = label

	if tag == "#segment_break":
		current_label.text += "\n"  # Ajout d'un retour à la ligne si segment_break

	current_label._add_full_text(text)
	_start_text_animation()

# Animation du texte segmenté
func _start_text_animation() -> void:
	timer = 0.0
	if current_label:
		current_text = current_label.full_text
		current_char_index = 0
		current_text_state = TextState.ANIMATING
		if continue_button:
			continue_button.visible = false


func display_text(text: String, style: DisplayStyle) -> void:
	# Pour compatibilité, on redirige vers show_segment
	show_segment(text)
	if current_label:
		current_text = current_label.full_text
		current_char_index = 0
		current_text_state = TextState.ANIMATING
		if continue_button:
			continue_button.visible = false

func _position_continue_button_at_last_line():
	if not continue_button or not current_label:
		return
	
	await get_tree().process_frame

	var label_global_pos = current_label.global_position
	var label_size = current_label.size
	var snl_global_pos = global_position

	var label_relative_pos = label_global_pos - snl_global_pos

	var content_height = current_label.get_content_height()

	var button_x = label_relative_pos.x + current_label.get_content_width()
	var button_y = label_relative_pos.y + content_height

	continue_button.position = Vector2(button_x, button_y)
	print("[SNLDisplay] Positioned continue button at: ", continue_button.position)

func _show_continue_button():
	if continue_button:
		continue_button.visible = true

func _process(delta: float) -> void:
	if current_text_state == TextState.ANIMATING and current_label and self.visible:
		timer += delta
		if timer >= text_speed:
			timer = 0.0
			current_char_index += 1
			current_label.text = current_text.substr(0, current_char_index)
			if current_char_index >= current_text.length():
				current_text_state = TextState.COMPLETED
				_add_continue_indicator()

func _add_continue_indicator():
	if current_label:
		for i in range(label_list.size() -1):
			var old_label = label_list[i]
			if old_label and old_label.text.contains("nextpage.png"):
				old_label.text = old_label.text.replace("  [img=center,center]res://asset/SystVisuals_config&UI/nextpage.png[/img]", "")
		
		var continue_icon = "  [img=center,center]res://asset/SystVisuals_config&UI/nextpage.png[/img]"
		current_label.text += continue_icon

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if current_text_state == TextState.ANIMATING:
			_complete_text_immediately()
			emit_signal("continue_requested")
		elif current_text_state == TextState.COMPLETED:
			print("[SNLDisplay] User clicked to continue")
			_remove_continue_indicator()
			current_text_state = TextState.IDLE
			emit_signal("continue_requested")
			
func _complete_text_immediately() -> void:
	if current_label:
		current_label.text = current_text
		current_text_state = TextState.COMPLETED
		_add_continue_indicator()

func _on_continue_button_pressed() -> void:
	if current_text_state == TextState.ANIMATING:
		_complete_text_immediately()
	else:	
		_remove_continue_indicator()
		current_text_state = TextState.IDLE
		emit_signal("continue_requested")

func _remove_continue_indicator() -> void:
	if current_label and current_label.text.contains("nextpage.png"):
		current_label.text = current_label.text.replace("  [img=center,center]res://asset/SystVisuals_config&UI/nextpage.png[/img]", "")


func clear_display() -> void:
	for label in label_list:
		if is_instance_valid(label):
			label.queue_free()
	label_list.clear()
	current_label = null
	current_text_state = TextState.IDLE

func force_continue_visible() -> void:
		_position_continue_button_at_last_line()
		_show_continue_button()
