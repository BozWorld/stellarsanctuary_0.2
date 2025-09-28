class_name TagCommandProcessor
extends Node

signal command_queue_drained()

@export var transition_manager: TransitionManager
@export var enable_debug := false
@export var audio_manager: AudioStreamPlayer
var _command_queue: Array = []
var _is_processing := false

# === API PUBLIQUE SIMPLE ===
func enqueue_tags(tags: Array) -> void:
	_command_queue.append_array(tags)
	if not _is_processing:
		_process_queue()

# === Traitement SÉQUENCIEL ===
func _process_queue() -> void:
	_is_processing = true

	while _command_queue.size() > 0:
		var tag = _command_queue.pop_front()
		await _process_single_tag(tag)
	_is_processing = false
	emit_signal("command_queue_drained")

func _process_single_tag(tag: String):
	_debug("Processing tag: " + tag)
	
	var parsed = _parse_tag(tag)
	if parsed.is_empty():
		return
	
	match parsed.type:
		"wait":
			await get_tree().create_timer(parsed.ms / 1000.0).timeout
		"audio":
			_handle_audio(parsed)
		"bg":
			if transition_manager:
				await transition_manager.crossfade_background("res://" + parsed.path, parsed.dur)
		"image":
			if transition_manager:
				match parsed.action:
					"show":
						await transition_manager.show_image(parsed)
					"hide":
						await transition_manager.hide_image(parsed)
		"text":
			if transition_manager:
				match parsed.action:
					"show":
						await transition_manager.show_ptext(parsed)
					"hide":
						await transition_manager.hide_ptext(parsed)
		"hide_window":
			if transition_manager and transition_manager.has_method("hide_window"):
				transition_manager.hide_window()
		"show_window":
			if transition_manager and transition_manager.has_method("show_window"):
				await transition_manager.show_window()
		"window":
			#traitement fenêtre (show/hide)
			pass
		_:
			_debug("Unknown command type: " + parsed.type)


func _handle_window(cmd: Dictionary):
	_debug("layout command processed")

# === PARSING ===
func _parse_tag(tag: String) -> Dictionary:
	var parts = tag.split(":")
	if parts.size() < 1:
		return {}
	var result = {"type": parts[0]}

	match parts[0]:
		"hide_window":
			# Récupérer SNLDisplay depuis DisplayStyleManager
			var dsm = get_parent()  # DisplayStyleManager
			if dsm and dsm.has_node("SNLDisplay"):
				var snl_display = dsm.get_node("SNLDisplay")
				snl_display.visible = false
				_debug("SNLDisplay hidden")
		"show_window":
			# Récupérer SNLDisplay depuis DisplayStyleManager
			var dsm = get_parent()  # DisplayStyleManager
			if dsm and dsm.has_node("SNLDisplay"):
				var snl_display = dsm.get_node("SNLDisplay")
				snl_display.visible = true
				_debug("SNLDisplay shown")
		"layout":
			result["layout_type"] = parts[1] if parts.size() > 1 else "SNL"
		"window":
			result["width"] = int(parts[1]) if parts.size() > 1 else 1280
			result["height"] = int(parts[2]) if parts.size() > 2 else 720
			result["x"] = int(parts[3]) if parts.size() > 3 else 0
			result["y"] = int(parts[4]) if parts.size() > 4 else 0
			result["margin_left"] = int(parts[5]) if parts.size() > 5 else 0
			result["margin_top"] = int(parts[6]) if parts.size() > 6 else 0
			result["margin_right"] = int(parts[7]) if parts.size() > 7 else 0
			result["color"] = parts[8] if parts.size() > 8 else "#000000"
			result["opacity"] = float(parts[9]) / 100.0 if parts.size() > 9 else 255
		"wait":
			result["ms"] = float(parts[1]) / 1000.0
		"audio":
			result["action"] = parts[1]
			result["path"] = parts[2] if parts.size() > 2 else ""
			result["volume"] = float(parts[3]) / 100.0 if parts.size() > 5 else 1.0
		"bg":
			result["path"] = parts[1] if parts.size() > 1 else ""
			result["method"] = parts[2] if parts.size() > 2 else "fade"
			result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 1.0
		"image":
			result["action"] = parts[1]
			if result["action"] == "hide":
				# Pour hide, on a besoin du layer ou d'un identifiant
				result["layer"] = parts[2] if parts.size() > 2 else "default"
				result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 1.0
			else:  # show
				result["path"] = parts[2] if parts.size() > 2 else ""
				result["layer"] = "default"
				result["effect"] = "fade"
				result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 1.0
				result["x"] = null
				result["y"] = null
		"text":
			result["action"] = parts[1]
			result["id"] = parts[2] if parts.size() > 2 else ""
			result["x"] = int(parts[3]) if parts.size() > 3 else 0
			result["y"] = int(parts[4]) if parts.size() > 4 else 0
			result["size"] = int(parts[5]) if parts.size() > 5 else 24
			result["color"] = parts[6] if parts.size() > 6 else "#FFFFFF"
			result["font"] = parts[7] if parts.size() > 7 else ""
			result["anim_in"] = parts[8] if parts.size() > 8 else "fade"
			result["anim_out"] = parts[9] if parts.size() > 9 else "fade"
			result["lifetime_ms"] = int(parts[10]) if parts.size() > 10 else -1
	
	return result

func _handle_audio(cmd: Dictionary):
	if not audio_manager:
		_debug("No audio_manager assigned!")
		return
		
	var action = cmd.get("action", "")
	var path = cmd.get("path", "")
	var volume = cmd.get("volume", 1.0)
	
	_debug("Audio: %s | Path: %s | Volume: %.2f" % [action, path, volume])
	
	match action:
		"playbgm":
			if audio_manager.has_method("play_bgm"):
				audio_manager.play_bgm(path, volume)
			elif audio_manager.has_method("play_music"):
				audio_manager.play_music( path, volume)
		"playse":
			if audio_manager.has_method("play_se"):
				audio_manager.play_se(str(path), str(volume))
			elif audio_manager.has_method("play_sound"):
				audio_manager.play_sound(str(path), str(volume))
		"stopbgm":
			if audio_manager.has_method("stop_bgm"):
				audio_manager.stop_bgm()
			elif audio_manager.has_method("stop_music"):
				audio_manager.stop_music()
		"fadeoutbgm":
			var fade_time = cmd.get("fade_time", 1000) / 1000.0  # ms vers secondes
			if audio_manager.has_method("fadeout_bgm"):
				audio_manager.fadeout_bgm(fade_time)
			elif audio_manager.has_method("fadeout_music"):
				audio_manager.fadeout_music(fade_time)
		_:
			_debug("Unknown audio action: " + action)
	
func _debug(msg: String):
	if enable_debug:
		print("[TagCmd] " + msg)
