# SNLDisplay.gd - Gère l'affichage style SNL
class_name SNLDisplay
extends Control

@onready var text_label: RichTextLabel
@onready var dark_overlay: ColorRect

var typewriter_speed: float = 0.03
var is_typing: bool = false

func _ready():
	# Setup du fond sombre pour la lisibilité
	if dark_overlay:
		dark_overlay.color = Color(0, 0, 0, 0.7)
		dark_overlay.visible = true

func display_line(line: DialogueData):
	show_text(line.text)

func show_text(text: String):
	var segments = text.split("|")
	text_label.text = ""
	is_typing = true
	
	var full_text = ""
	for i in range(segments.size()):
		full_text += segments[i]
		if i < segments.size() - 1:
			full_text += "\n\n"  # Double saut de ligne entre paragraphes
	
	await type_text(full_text)

func type_text(text: String):
	for i in range(text.length()):
		text_label.text += text[i]
		await get_tree().create_timer(typewriter_speed).timeout
	is_typing = false