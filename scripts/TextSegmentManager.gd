# TextSegmentManager.gd
class_name TextSegmentManager
extends Node

# Signaux
signal segment_ready(segment_text: String, segment_type: SegmentType, display_style: int)
signal all_segments_completed()

# Enums
enum SegmentType {NORMAL, SEGMENT_BREAK, NEW_PAGE}

@export var enable_debug: bool = false
# Variables privées
var _segments: Array[Dictionary] = []
var _current_index: int = 0
var _is_active := false
var _current_display_style: int = 0  # DisplayStyleManager.DisplayStyle


# === API PUBLIQUE ===
func process_text_with_tags(text: String, tags: Array, display_style: int) -> void:
	_debug("Processing text with tags: %s for style: %s" % [tags, display_style])
	
	_current_display_style = display_style
	_reset()
	_build_segments(text, tags)
	_start_processing()

func advance_to_next_segment() -> void:
	if not _is_active:
		return
	_current_index += 1
	print("[TextSegmentManager] Advancing to segment %d" % _current_index)
	_process_current_segment()

func has_more_segments() -> bool:
	return _current_index + 1 < _segments.size()

# === CONSTRUCTION SEGMENTS ===
func _build_segments(text: String, tags: Array) -> void:
	#1. découpe le texte par marqueurs inline
	var text_parts = _split_by_inline_tags(text)
	#2. ajouter segment de texte
	for part in text_parts:
		_segments.append(part)
	#3. ajouter tags externe
	for tag in tags:
		match tag:
			"segment_break":
				_segments.append({"text": "", "type": SegmentType.SEGMENT_BREAK})
			"new_page":
				_segments.append({"text": "", "type": SegmentType.NEW_PAGE})

func _split_by_inline_tags(text: String) -> Array:
	var results: Array[Dictionary] = []
	var remaining = text

	while remaining.length() > 0:
		var next_break = remaining.find("#segment_break")
		var next_page = remaining.find("#new_page")

		var next_tag_pos = -1
		var next_tag_type = SegmentType.NORMAL

		if next_break != -1 and (next_page == -1 or next_break < next_page):
			next_tag_pos = next_break
			next_tag_type = SegmentType.SEGMENT_BREAK
		elif next_page != -1:
			next_tag_pos = next_page
			next_tag_type = SegmentType.NEW_PAGE
		
		if next_tag_pos == -1:
			var final_text = remaining.strip_edges()
			if final_text != "":
				results.append({"text": final_text, "type": SegmentType.NORMAL})
			break
		else:
			var before_tag = remaining.substr(0, next_tag_pos).strip_edges()
			if before_tag != "":
				results.append({"text": before_tag, "type": SegmentType.NORMAL})
			
			results.append({"text": "", "type": next_tag_type})

			var tag_length = 14 if next_tag_type == SegmentType.SEGMENT_BREAK else 9
			remaining = remaining.substr(next_tag_pos + tag_length)
	return results

#  === TRAITEMENT ===
func _start_processing() -> void:
	if _segments.is_empty():
		print("[TextSegmentManager] No segments to process.")
		emit_signal("all_segments_completed")
		return
	print("[TextSegmentManager] Starting processing of %d segments." % _segments.size())
	_is_active = true
	_current_index = 0
	_process_current_segment()


func _process_current_segment():
	if _current_index >= _segments.size():
		_finish()
		return
	var segment = _segments[_current_index]
	_debug("Processing segment " + str(_current_index) + ": " + SegmentType.keys()[segment.type])
	
	emit_signal("segment_ready", segment.text, segment.type, _current_display_style)

func _finish():
	_is_active = false
	_debug("All segments completed")
	emit_signal("all_segments_completed")

func _reset() -> void:
	_segments.clear()
	_current_index = 0
	_is_active = false

func _debug(msg: String) -> void:
	if enable_debug:
		print("[TextSegmentManager] ", msg)
