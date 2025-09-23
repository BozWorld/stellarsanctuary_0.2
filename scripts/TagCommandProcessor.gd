class_name TagCommandProcessor
extends Node

signal command_queue_drained()

@export var enable_debug := false

var _queue : Array = []
var _is_running := false
@export var transition_manager: TransitionManager
var display_style_manager: DisplayStyleManager
@export var audio_manager: AudioStreamPlayer

func _debug(m): if enable_debug: print("[TagCmd]", m)

func enqueue_tags(tags: Array) -> void:
	for t in tags:
		var cmd = _parse_tag(t)
		if cmd: _queue.append(cmd)
	if not _is_running:
		_process_next()


func _parse_tag(tag: String) -> Dictionary:
	var parts = tag.split(":")
	if parts.is_empty(): return {}
	match parts[0]:
		"audio":
			return _parse_audio(parts)
		"image":
			return _parse_image(parts)
		"bg":
			return {"type":"bg","path":parts[1] if parts.size()>1 else "", "mode":parts[2] if parts.size()>2 else "crossfade", "dur":float(parts[3])/1000.0 if parts.size()>3 else 1.0}
		"cg":
			return {"type":"cg","sub":parts[1] if parts.size()>1 else ""}
		"wait":
			return {"type":"wait","ms":int(parts[1]) if parts.size()>1 else 0}
		"text":
			return _parse_ptext(parts)
		"hide_window":
			return {"type":"window","action":"hide"}
		"show_window":
			return {"type":"window","action":"show"}
		_:
			return {}
	return {}

func _parse_ptext(parts: Array) -> Dictionary:
	if parts.size()<2: return {}
	var mode = parts[1]
	match mode:
		"show":
			var id        = parts[2] if parts.size() > 2 else ""
			var x_str     = parts[3] if parts.size() > 3 else ""
			var y_str     = parts[4] if parts.size() > 4 else ""
			var size_str  = parts[5] if parts.size() > 5 else ""
			var color_str = parts[6] if parts.size() > 6 else ""
			var font_id   = parts[7] if parts.size() > 7 else ""
			var anim_in   = parts[8] if parts.size() > 8 else "fade"
			var anim_out  = parts[9] if parts.size() > 9 else "fade"
			var lifetime  = parts[10] if parts.size() > 10 else ""
			return {
				"type":"ptext",
				"mode":"show",
				"id": id,
				"x": null if x_str == "" else float(x_str),
				"y": null if y_str == "" else float(y_str),
				"size": 64 if size_str == "" else int(size_str), 
				"color": color_str,
				"font": font_id,
				"anim_in": anim_in,
				"anim_out": anim_out,
				"lifetime_ms": -1 if lifetime == "" else int(lifetime)
			}
			
		"hide":
			var idh       = parts[2] if parts.size() > 2 else ""
			var anim_o    = parts[3] if parts.size() > 3 else "fade"
			return {
				"type":"ptext",
				"mode":"hide",
				"id": idh,
				"anim_out": anim_o
			}
		"free":
			var idf = parts[2] if parts.size() > 2 else ""
			return {
				"type":"ptext",
				"mode":"free",
				"id": idf
			}
		_:
			return {}
	return {}
	
func _parse_audio(parts: Array) -> Dictionary:
	if parts.size()<2: return {}
	match parts[1]:
		"playse":
			return {"type":"audio","sub":"se","path":parts[2] if parts.size()>2 else "", "vol":parts[3] if parts.size()>3 else "100"}
		"playbgm":
			return {"type":"audio","sub":"bgm","path":parts[2] if parts.size()>2 else "", "loop": parts.has("loop")}
		"fadeoutbgm":
			return {"type":"audio","sub":"fadeoutbgm","dur": float(parts[2])/1000.0 if parts.size()>2 else 1.0}
		"fadeoutse":
			return {"type":"audio","sub":"fadeoutse","dur": float(parts[2])/1000.0 if parts.size()>2 else 1.0}
	return {}

func _parse_image(parts: Array) -> Dictionary:
	# Syntaxe :
	# image:show:path[:dur_ms[:x[:y[:layer[:effect]]]]]
	# image:hide:dur_ms[:layer]
	# image:free:layer
	if parts.size() < 2:
		return {}
	
	match parts[1]:
		"show":
			var path = parts[2] if parts.size() > 2 else ""
			var dur_ms = int(parts[3]) if parts.size() > 3 else 1000
			var x_str = parts[4] if parts.size() > 4 else ""
			var y_str = parts[5] if parts.size() > 5 else ""
			var layer = parts[6] if parts.size() > 6 else "default"
			var effect = parts[7] if parts.size() > 7 else ""
			return {
				"type": "image",
				"action": "show",
				"path": path,
				"dur": dur_ms / 1000.0,
				"x": null if x_str == "" else float(x_str),
				"y": null if y_str == "" else float(y_str),
				"layer": layer,
				"effect": effect
			}
		"hide":
			var dur_ms = int(parts[2]) if parts.size() > 2 else 500
			var layer2 = parts[3] if parts.size() > 3 else "default"
			return {
				"type": "image",
				"action": "hide",
				"dur": float(dur_ms) / 1000.0,
				"layer": layer2
			}
		"free":
			var layer3 = parts[2] if parts.size() > 2 else "default"
			return {
				"type": "image",
				"action": "free",
				"layer": layer3
			}
	return {}


func _process_next():
	if _queue.is_empty():
		_is_running = false
		emit_signal("command_queue_drained")
		return
	_is_running = true
	var cmd = _queue.pop_front()
	_execute_command(cmd)

func _execute_command(cmd: Dictionary):
	if cmd.is_empty():
		_process_next()
		return
	match cmd.type:
		"wait":
			await get_tree().create_timer(cmd.ms/1000.0).timeout

		"bg":
			if transition_manager:
				await transition_manager.crossfade_background("res://%s" % cmd.path, cmd.dur)
		"cg":
			if transition_manager:
				if cmd.sub == "":
					await transition_manager.hide_cg()
				else:
					await transition_manager.show_cg("res://%s" % cmd.sub)
		"audio":
			if audio_manager:
				_handle_audio(cmd)
			else:
				_debug("Audio cmd (no audio_manager) %s" % cmd)
		"image":
			if transition_manager:
				match cmd.action:
					"show": await transition_manager.show_image(cmd)
					"hide": await transition_manager.hide_image(cmd)
					"free": await transition_manager.free_image(cmd.layer)
		"ptext":
			if transition_manager:
				match cmd.mode:
					"show": await transition_manager.show_ptext(cmd)
					"hide": await transition_manager.hide_ptext(cmd)
					"free": await transition_manager.free_ptext(cmd.id)
		"window":
			pass
	_process_next()

func _handle_audio(cmd: Dictionary) -> void:
	match cmd.sub:
		"se":
			audio_manager.play_se(cmd.path, cmd.vol)
		"bgm":
			audio_manager.play_bgm(cmd.path, cmd.get("loop", false))
		"fadeoutbgm":
			audio_manager.fadeout_bgm(cmd.dur)
		"fadeoutse":
			audio_manager.fadeout_all_se(cmd.dur)
