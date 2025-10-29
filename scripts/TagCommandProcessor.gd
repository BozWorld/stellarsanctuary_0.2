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
	var normalized := _normalize_tags(tags)
	_command_queue.append_array(normalized)
	if not _is_processing:
		_process_queue()

# === Traitement SÉQUENCIEL ===

func _normalize_tags(tags: Array) -> Array:
	var out: Array = []
	var i := 0
	while i < tags.size():
		var t := str(tags[i]).strip_edges()
		# Cas 1: tag fragmenté avec deux points à la fin (ex: "color:" puis "94b8b8")
		if t.ends_with(":") and i + 1 < tags.size():
			var nxt := str(tags[i + 1]).strip_edges()
			out.append(t + nxt)
			i += 2
			continue

		# Cas 2: concaténation de lignes via backslash final
		if t.ends_with("\\") and i + 1 < tags.size():
			var nxt2 := str(tags[i + 1]).strip_edges()
			out.append(t.left(t.length() - 1) + nxt2)
			i += 2
			continue

		# Cas standard
		out.append(t)
		i += 1

	return out

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
		"cg":
			if transition_manager:
				match parsed.action:
					"show":
						await transition_manager.crossfade_cg("res://" + parsed.path, parsed.dur)
					"hide":
						await transition_manager.hide_cg(parsed.dur)
		"image":
			if transition_manager:
				match parsed.action:
					"show":
						if "Visuals_CG" in parsed.path:
							_debug("CG détecté dans image:show, utilisation de crossfade_cg")
							await transition_manager.crossfade_cg("res://" + parsed.path, parsed.dur)
						else:
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
			if transition_manager:
				transition_manager.hide_window()
		"show_window":
			if transition_manager:
				await transition_manager.show_window()
		"window":
			# traitement fenêtre (show/hide)
			pass
		"layout":
			_process_layout_tag(parsed.layout_type)
		"chara":
			_process_chara_tag(parsed)
		"characterSprite":
			_process_character_sprite_tag(parsed)
		"characterPortrait":
			_process_character_portrait_tag(parsed)
		"speaker":
			_process_speaker_tag(parsed)
		"color":
			_process_color_tag(parsed)
		_:
			_debug("Unknown command type: " + parsed.type)

func _process_layout_tag(layout_value: String) -> void:
	var dsm = get_parent()
	if not dsm:
		return
	match layout_value.to_upper():
		"SNL":
			dsm.switch_to_style(DisplayStyleManager.DisplayStyle.SNL)
		"DYNAMIC_SNL":
			dsm.switch_to_style(DisplayStyleManager.DisplayStyle.DYNAMIC_SNL)
		"ADV":
			dsm.switch_to_style(DisplayStyleManager.DisplayStyle.ADV)
		_:
			_debug("Unknown layout style: " + layout_value)

func _process_chara_tag(parsed: Dictionary) -> void:
	var dsm = get_parent()
	if not dsm or not dsm.adv_display:
		return
	
	match parsed.action:
		"show":
			dsm.adv_display.show_character(
				parsed.get("name", ""),
				parsed.get("sprite", ""),
				Vector2.ZERO  # Position par défaut
			)
		"hide":
			dsm.adv_display.hide_character(parsed.get("name", ""))
		_:
			_debug("Unknown chara action: " + parsed.action)

func _process_speaker_tag(parsed: Dictionary) -> void:
	var dsm = get_parent()
	if not dsm:
		return
	
	var speaker_name = parsed.get("name", "")
	dsm.set_current_speaker(speaker_name)
	_debug("Speaker set to: %s" % speaker_name)

func _process_color_tag(parsed: Dictionary) -> void:
	var dsm = get_parent()
	if not dsm:
		return
	
	var color_hex = parsed.get("color", "#FFFFFF")
	if color_hex == "" or color_hex == "null":
		color_hex = "#FFFFFF"
	if not color_hex.begins_with("#"):
		color_hex = "#" + color_hex
	dsm.set_speaker_color(color_hex)
	_debug("Color set to: %s" % color_hex)

func _process_character_sprite_tag(parsed: Dictionary) -> void:
	var dsm = get_parent()
	if not dsm or not dsm.adv_display:
		return
	
	match parsed.action:
		"show":
			var character_name = parsed.get("name", "")
			var sprite_name = parsed.get("sprite", "")
			# Toujours déléguer à ADVDisplay: il gère le fallback via res:// si la resource n'existe pas
			dsm.adv_display.show_character(character_name, sprite_name)
			_debug("Character sprite requested: %s:%s" % [character_name, sprite_name])
		
		"hide":
			var character_name = parsed.get("name", "")
			dsm.adv_display.hide_character(character_name)
			_debug("Character sprite hidden: %s" % character_name)
		
		"mod":
			# Change sprite d'un personnage déjà affiché
			var character_name = parsed.get("name", "")
			var sprite_name = parsed.get("sprite", "")
			dsm.adv_display.show_character(character_name, sprite_name)
			_debug("Character sprite modified: %s:%s" % [character_name, sprite_name])

func _process_character_portrait_tag(parsed: Dictionary) -> void:
	var dsm = get_parent()
	if not dsm or not dsm.adv_display:
		return

	match parsed.action:
		"show":
			var name = parsed.get("name", "")
			var expr = parsed.get("expression", "neutral")
			# Mode par défaut: symbolique via resources
			dsm.adv_display.show_portrait(name, expr)
			_debug("Character portrait (resource) requested: %s:%s" % [name, expr])

		"hide":
			dsm.adv_display.hide_portrait()
			_debug("Character portrait hidden")

		_:
			_debug("Unknown characterPortrait action: " + str(parsed.action))

func _process_ui_tag(parsed: Dictionary) -> void:
	if not transition_manager:
		return
	
	match parsed.action:
		"show":
			await transition_manager.show_ui_overlay(parsed.get("path", ""))
		"hide", "free":
			await transition_manager.clear_ui_overlays()
		_:
			_debug("Unknown ui action: " + parsed.action)

# === PARSING ===
func _parse_tag(tag: String) -> Dictionary:
	var parts = tag.split(":")
	if parts.size() < 1:
		return {}
	var result = {"type": parts[0]}

	match parts[0]:
		"layout":
			result["layout_type"] = parts[1] if parts.size() > 1 else "SNL"
		"chara":
			result["action"] = parts[1] if parts.size() > 1 else "show"
			result["name"] = parts[2] if parts.size() > 2 else ""
			result["sprite"] = parts[3] if parts.size() > 3 else ""
			result["duration"] = float(parts[4]) / 1000.0 if parts.size() > 4 else 0.5
			result["position"] = parts[5] if parts.size() > 5 else "center"
		"characterSprite":
			result["action"] = parts[1] if parts.size() > 1 else "show"  # show, hide, mod
			result["name"] = parts[2] if parts.size() > 2 else ""
			result["sprite"] = parts[3] if parts.size() > 3 else ""
			result["position"] = parts[4] if parts.size() > 4 else "center"
			result["duration"] = float(parts[5]) / 1000.0 if parts.size() > 5 else 0.3
		"characterPortrait":
			result["action"] = parts[1] if parts.size() > 1 else "show"  # show, hide
			result["name"] = parts[2] if parts.size() > 2 else ""
			result["expression"] = parts[3] if parts.size() > 3 else "neutral"
		"ui":
			result["action"] = parts[1] if parts.size() > 1 else "show"
			result["element"] = parts[2] if parts.size() > 2 else ""
			result["path"] = parts[3] if parts.size() > 3 else ""
		"speaker":
			result["name"] = parts[1] if parts.size() > 1 else ""
		"color":
			result["color"] = parts[1] if parts.size() > 1 else "#FFFFFF"
		"wait":
			result["ms"] = int(parts[1]) if parts.size() > 1 else 0
		"audio":
			result["action"] = parts[1]
			result["path"] = parts[2] if parts.size() > 2 else ""
			result["volume"] = float(parts[3]) / 100.0 if parts.size() > 5 else 1.0
		"bg":
			result["path"] = parts[1] if parts.size() > 1 else ""
			result["method"] = parts[2] if parts.size() > 2 else "fade"
			result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 1.0
		"cg":
			result["action"] = parts[1] if parts.size() > 1 else "show"  # show ou hide
			if result["action"] == "show":
				result["path"] = parts[2] if parts.size() > 2 else ""
				result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 0.3
			else:  # hide
				result["dur"] = float(parts[2]) / 1000.0 if parts.size() > 2 else 0.3
		"image":
			result["action"] = parts[1]
			if result["action"] == "hide":
				# Pour hide, on a besoin du layer ou d'un identifiant
				result["layer"] = parts[2] if parts.size() > 2 else "default"
				result["dur"] = float(parts[3]) / 1000.0 if parts.size() > 3 else 1.0
			else:  # show
				result["path"] = parts[2] if parts.size() > 2 else ""
				result["layer"] = parts[3] if parts.size() > 3 else "default"
				result["effect"] = parts[4] if parts.size() > 4 else "fade"
				result["dur"] = float(parts[5]) / 1000.0 if parts.size() > 5 else 1.0
				result["width"] = int(parts[6]) if parts.size() > 6 else 1280
				result["height"] = int(parts[7]) if parts.size() > 7 else 720
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
