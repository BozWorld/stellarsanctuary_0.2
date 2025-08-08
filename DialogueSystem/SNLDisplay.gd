# SNLDisplay.gd - Gère l'affichage style SNL
class_name SNLDisplay
extends Control

@export var text_label: RichTextLabel
@export var dark_overlay: ColorRect
signal typing_finished


var typewriter_speed: float = 0.03
var is_typing: bool = false
var full_text: String = ""
var segments: PackedStringArray = []
var current_segment_index: int = 0
var all_segments_finished: bool = false

func _ready():	
	# Setup du fond sombre pour la lisibilité
	if dark_overlay:
		dark_overlay.color = Color(0, 0, 0, 0.7)
		dark_overlay.visible = true

func display_line(line: DialogueData):
	show_text(line.text)

func show_text(text: String):
	if not text_label:
		push_error("no text_label assigned")
		return
	
	segments = text.split("|")
	for i in range(segments.size()):
		segments[i] = segments[i].strip_edges() 
	
	current_segment_index = 0
	all_segments_finished = false
	text_label.text = ""
	full_text = text.replace("|", "\n").strip_edges()

	await display_next_segment()

func display_next_segment():
	if current_segment_index >= segments.size():
		all_segments_finished = true
		typing_finished.emit()
		return
	var segment_text = segments[current_segment_index]
	is_typing = true
	print(is_typing, " - Displaying segment: ", current_segment_index, " - Text: ", segment_text)
	if current_segment_index > 0:
		text_label.text += "\n\n"  # Ajoute une nouvelle ligne avant le segment
	for i in range(segment_text.length()):
		if not is_typing:
			break
		text_label.text += segment_text[i]
		await get_tree().create_timer(typewriter_speed).timeout
	
	current_segment_index += 1
	is_typing = false

func skip_typing():
	if is_typing:
		is_typing = false
		var current_segment = segments[current_segment_index - 1] if current_segment_index > 0 else segments[0]
		text_label.text = ""
		for i in range(current_segment.length()):
			if i>0:
				text_label.text += "" 
			text_label.text += current_segment[i]
	elif not all_segments_finished:
		display_next_segment()
	else:
		typing_finished.emit()  # Émet le signal si tous les segments sont déjà affichés
		return
		
# func type_segment(segment_text: String):
# 	var start_length = text_label.text.length()
# 	if start_length > 0:
# 		text_label.text += "\n"  # Ajoute une nouvelle ligne avant le segment
	
# 	for i in range(segment_text.length()):
# 		text_label.text += segment_text[i]
# 		await get_tree().create_timer(typewriter_speed).timeout
# func type_text(text: String):
# 	for i in range(text.length()):	
# 		text_label.text += text[i]
# 		await get_tree().create_timer(typewriter_speed).timeout
# 	is_typing = false
# 	typing_finished.emit()  # Émet le signal lorsque le texte est complètement tapé
