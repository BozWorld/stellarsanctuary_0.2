# TextSegmentManager.gd
class_name TextSegmentManager
extends Node

# Signaux
signal segment_ready(segment_text: String, segment_type: SegmentType)
signal page_break_requested()
signal all_segments_completed()

# Enums
enum SegmentType {
	NORMAL,        # Texte normal
	SEGMENT_BREAK, # Pause entre segments (#segment_break)
	NEW_PAGE       # Changement de page (#new_page)
}

# Variables privées
var _current_segments: Array[Dictionary] = []
var _current_segment_index: int = 0
var _is_processing: bool = false

# Variables publiques
var auto_advance: bool = false
var segment_pause_duration: float = 1.0

func _ready() -> void:
	print("TextSegmentManager initialized")

# Fonction principale pour traiter un texte avec tags

func process_text_with_tags(raw_text: String, tags: Array) -> void:
	print("Processing text with tags: ", tags)
	_reset_state()

	# Nouvelle logique : découpe le texte selon les tags dans la ligne
	var segments = _split_text_by_tags(raw_text)
	for seg in segments:
		_add_segment(seg.text, seg.type)

	if _current_segments.is_empty():
		return
	_start_segment_display()

# Découpe le texte en segments selon #segment_break et #new_page (même sur la même ligne)
func _split_text_by_tags(text: String) -> Array:
	var segments: Array = []
	var buffer = ""
	var i = 0
	while i < text.length():
		if text[i] == '#':
			# Cherche le tag complet
			var tag_start = i
			var tag_end = text.find(" ", tag_start)
			if tag_end == -1:
				tag_end = text.length()
			var tag = text.substr(tag_start, tag_end - tag_start)
			var tag_type = null
			if tag.begins_with("#segment_break"):
				tag_type = SegmentType.SEGMENT_BREAK
			elif tag.begins_with("#new_page"):
				tag_type = SegmentType.NEW_PAGE
			if tag_type != null:
				if buffer.strip_edges() != "":
					segments.append({"text": buffer.strip_edges(), "type": tag_type})
				buffer = ""
				i = tag_end
				continue
		buffer += text[i]
		i += 1
	if buffer.strip_edges() != "":
		segments.append({"text": buffer.strip_edges(), "type": SegmentType.NORMAL})
	return segments

# Extrait les segments basés sur les tags Ink
## Ancienne fonction supprimée (remplacée par _split_text_by_tags)

# Alternative : traite le texte avec des marqueurs inline (pour compatibilité)
func process_text_with_markers(raw_text: String) -> void:
	print("Processing text with inline markers")
	_reset_state()
	
	# Divise le texte selon les marqueurs #segment_break et #new_page
	var segments = _split_text_by_markers(raw_text)
	
	for segment_data in segments:
		_add_segment(segment_data.text, segment_data.type)
	
	_start_segment_display()

# Divise le texte selon les marqueurs inline
func _split_text_by_markers(text: String) -> Array[Dictionary]:
	var segments: Array[Dictionary] = []
	var current_text = ""
	var lines = text.split("\n")
	
	for line in lines:
		if line.strip_edges() == "#segment_break":
			if not current_text.is_empty():
				segments.append({
					"text": current_text.strip_edges(),
					"type": SegmentType.SEGMENT_BREAK
				})
				current_text = ""
		elif line.strip_edges() == "#new_page":
			if not current_text.is_empty():
				segments.append({
					"text": current_text.strip_edges(),
					"type": SegmentType.NEW_PAGE
				})
				current_text = ""
		else:
			if not current_text.is_empty():
				current_text += "\n"
			current_text += line
	
	# Ajoute le dernier segment s'il existe
	if not current_text.is_empty():
		segments.append({
			"text": current_text.strip_edges(),
			"type": SegmentType.NORMAL
		})
	
	return segments

# Ajoute un segment à la liste
func _add_segment(text: String, type: SegmentType) -> void:
	if text.is_empty():
		return
		
	_current_segments.append({
		"text": text.strip_edges(),
		"type": type,
		"displayed": false
	})
	
	print("Added segment: ", text.substr(0, 50), "... (Type: ", SegmentType.keys()[type], ")")

# Démarre l'affichage des segments
func _start_segment_display() -> void:
	if _current_segments.is_empty():
		print("No segments to display")
		return
	
	_current_segment_index = 0
	_is_processing = true
	_display_current_segment()

# Affiche le segment actuel
func _display_current_segment() -> void:
	if _current_segment_index >= _current_segments.size():
		_finish_processing()
		return

	var segment = _current_segments[_current_segment_index]
	segment.displayed = true

	print("Displaying segment ", _current_segment_index + 1, "/", _current_segments.size())
	print("Segment type: ", SegmentType.keys()[segment.type])
	print("Segment text: ", segment.text)

	# Affiche le segment
	emit_signal("segment_ready", segment.text, segment.type)

	# Si c'est un NEW_PAGE, on efface l'affichage juste après ce segment
	if segment.type == SegmentType.NEW_PAGE:
		# On attend l'input utilisateur pour avancer, puis le DisplayStyleManager effacera l'affichage
		emit_signal("page_break_requested")
	elif segment.type == SegmentType.SEGMENT_BREAK:
		if auto_advance:
			_advance_to_next_segment_delayed()

# Avance au segment suivant avec délai
func _advance_to_next_segment_delayed() -> void:
	await get_tree().create_timer(segment_pause_duration).timeout
	advance_to_next_segment()

# Fonction publique pour avancer manuellement
func advance_to_next_segment() -> void:
	if not _is_processing:
		return
		
	_current_segment_index += 1
	_display_current_segment()

# Fonction publique pour obtenir le segment actuel
func get_current_segment() -> Dictionary:
	if _current_segment_index < _current_segments.size():
		return _current_segments[_current_segment_index]
	return {}

# Fonction publique pour obtenir le nombre total de segments
func get_total_segments() -> int:
	return _current_segments.size()

# Fonction publique pour obtenir l'index actuel
func get_current_segment_index() -> int:
	return _current_segment_index

# Vérifie s'il y a encore des segments à afficher
func has_more_segments() -> bool:
	return _current_segment_index < _current_segments.size() - 1

# Remet à zéro l'état du gestionnaire
func _reset_state() -> void:
	_current_segments.clear()
	_current_segment_index = 0
	_is_processing = false

# Termine le traitement
func _finish_processing() -> void:
	_is_processing = false
	print("All segments completed")
	emit_signal("all_segments_completed")

# Fonction de debug pour afficher tous les segments
func debug_print_segments() -> void:
	print("=== DEBUG: All Segments ===")
	for i in range(_current_segments.size()):
		var segment = _current_segments[i]
		print("Segment ", i, " (", SegmentType.keys()[segment.type], "): ", segment.text.substr(0, 100))
	print("=== END DEBUG ===")

# Fonction pour forcer l'affichage de tous les segments (skip)
func skip_to_end() -> void:
	while has_more_segments():
		advance_to_next_segment()
