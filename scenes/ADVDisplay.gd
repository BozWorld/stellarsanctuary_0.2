# ADVDisplay.gd - Gère l'affichage style ADV
class_name ADVDisplay
extends Control

@onready var textbox: RichTextLabel
@onready var name_label: Label
@onready var name_box: Panel
@onready var portrait_rect: TextureRect

var current_character: Character
var typewriter_speed: float = 0.05
var is_typing: bool = false

func display_line(line: DialogueData, character: Character = null):
	if character:
		current_character = character
		setup_character_display()
	
	show_text(line.text)
	
	# Gère les portraits pour Euphie
	if character and character.has_portraits:
		show_portrait(line.portrait)

func setup_character_display():
	if current_character:
		name_label.text = current_character.name
		name_label.modulate = current_character.color
		name_box.visible = true
	else:
		name_box.visible = false

func show_text(text: String):
	var segments = text.split("|")
	textbox.text = ""
	is_typing = true
	
	for segment in segments:
		await type_text(segment)
		await get_tree().create_timer(0.5).timeout  # Pause entre segments

func type_text(text: String):
	for i in range(text.length()):
		textbox.text += text[i]
		await get_tree().create_timer(typewriter_speed).timeout
	is_typing = false

func show_portrait(portrait_name: String):
	if portrait_name != "" and portrait_rect:
		var portrait_path = "res://portraits/euphie_" + portrait_name + ".png"
		var texture = load(portrait_path)
		if texture:
			portrait_rect.texture = texture
			portrait_rect.visible = true
	else:
		portrait_rect.visible = false

