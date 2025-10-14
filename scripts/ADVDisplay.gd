# ADVDisplay.gd
class_name ADVDisplay
extends Control

# Signaux
signal continue_requested()

# Enums
enum TextState { IDLE, ANIMATING, COMPLETED }

@export var character_container: Control
@export var dialog_box: Control
@export var name_box: RichTextLabel
@export var text_label: RichTextLabel
@export var continue_button: Button

# Variables
var _characters := {}
var _current_text := ""
var _animation_speed := 30.0
var _is_animating := false
var _current_speaker := ""
var _current_speaker_color := Color.WHITE
var character_resource: Dictionary = {}

enum state { IDLE, ANIMATING, COMPLETED }
var current_state: state = state.IDLE

func _ready() -> void:
	_load_character_resources()
	if continue_button:
		continue_button.pressed.connect(_on_continue_pressed)
	# Récupérer les références depuis la scène
	if not text_label:
		text_label = get_node_or_null("PanelContainer/HBoxContainer/DialogueContaine/DialogueLabel")
	if not name_box:
		name_box = get_node_or_null("PanelContainer/HBoxContainer/DialogueContaine/NameLabel")
	if not character_container:
		character_container = get_node_or_null("PanelContainer/HBoxContainer/CharacterContainer")

func _load_character_resources():
	return 

func display_text(text: String) -> void:
	_current_text = text
	print("[ADVDisplay] Displaying text: %s with speaker: %s" % [text.substr(0,30), _current_speaker])
	
	# Mettre à jour le nom du speaker
	if name_box:
		if _current_speaker != "":
			name_box.text = _current_speaker
			name_box.modulate = _current_speaker_color
			name_box.visible = true
		else:
			name_box.visible = false
	
	await _animate_text()

func set_current_speaker(speaker_name: String, color_hex: String = "#FFFFFF") -> void:
	_current_speaker = speaker_name
	_current_speaker_color = Color(color_hex) if color_hex.begins_with("#") else Color.WHITE
	_debug("Speaker set to: %s with color: %s" % [speaker_name, color_hex])

func set_text_color(color_hex: String) -> void:
	_current_speaker_color = Color(color_hex) if color_hex.begins_with("#") else Color.WHITE
	if name_box:
		name_box.modulate = _current_speaker_color

func show_character(character_name: String, sprite_name: String = "", char_position: Vector2 = Vector2.ZERO) -> void:
	if not character_container:
		_debug("No character container found")
		return
	
	var character: TextureRect
	
	if _characters.has(character_name):
		character = _characters[character_name]
	else:
		character = TextureRect.new()
		character.name = "chara_" + character_name
		character_container.add_child(character)
		_characters[character_name] = character
	
	# Obtenir la texture depuis DisplayStyleManager
	var dsm = get_tree().get_first_node_in_group("display_style_manager")
	var texture: Texture2D
	var final_position = char_position
	
	if dsm:
		texture = dsm.get_character_sprite(character_name, sprite_name)
	
	# Fallback au système legacy si pas de texture
	if not texture and not sprite_name.is_empty():
		texture = load("res://" + sprite_name) if sprite_name.begins_with("asset/") else null
		texture = load("res://" + sprite_name) if sprite_name.begins_with("asset/") else null
	
	if texture:
		character.texture = texture
		character.position = final_position
		character.visible = true
		_debug("Character %s shown with sprite %s" % [character_name, sprite_name])
	else:
		_debug("Failed to load texture for character %s" % character_name)

func hide_character(character_name: String) -> void:
	if _characters.has(character_name):
		var character = _characters[character_name]
		character.visible = false
		_debug("Character %s hidden" % character_name)

func clear_display() -> void:
	if text_label:
		text_label.text = ""
	current_state = state.IDLE

func _animate_text() -> void:
	if not text_label:
		_debug("No text label found for animation")
		return

	current_state = state.ANIMATING
	text_label.text = ""

	for i in range(_current_text.length()):
		if current_state != state.ANIMATING:
			break
		text_label.text = _current_text.substr(0, i + 1)
		await get_tree().create_timer(1.0 / _animation_speed).timeout
	
	_complete_text()

func _complete_text() -> void:
	current_state = state.COMPLETED
	if text_label:
		text_label.text = _current_text
	
	if continue_button:
		continue_button.visible = true

func _on_continue_pressed() -> void:
	if current_state == state.ANIMATING:
		_complete_text()
	elif current_state == state.COMPLETED:
		current_state = state.IDLE
		if continue_button:
			continue_button.visible = false
		emit_signal("continue_requested")

func _input(event: InputEvent) -> void:
	if visible and event is InputEventMouseButton and event.pressed:
		_on_continue_pressed()

func _debug(msg: String) -> void:
	print("[ADVDisplay] ", msg)
