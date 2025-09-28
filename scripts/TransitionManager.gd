# TransitionManager.gd
class_name TransitionManager
extends Node

# Signaux
signal transition_completed(from_style: int, to_style: int)

# Enums
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }
enum TransitionType { FADE, SLIDE, DISSOLVE, INSTANT }

# Variables
@export var default_transition_duration: float = 0.5
@export var default_transition_type: TransitionType = TransitionType.FADE
@export var enable_debug: bool = false
var _image_layers := {} # Dictionnaire pour gérer les images par couche
var current_tween: Tween
var audio_player: AudioStreamPlayer
var _ptexts := {} # id -> label
@export var default_ptext_lifetime_ms: int = 3000  # Nouveau: durée par défaut si non fournie (-1)

func _ready() -> void:
	# Initialise l'audio pour les effets sonores de transition
	audio_player = AudioStreamPlayer.new()
	add_child(audio_player)


func hide_window():
	var dsm = get_parent()  # DisplayStyleManager
	if dsm and dsm.has_node("SNLDisplay"):
		var snl_display = dsm.get_node("SNLDisplay")
		snl_display.visible = false
		_debug("SNLDisplay hidden via TransitionManager")

func show_window():
	# 1. Afficher SNLDisplay
	var dsm = get_parent()  # DisplayStyleManager
	if dsm and dsm.has_node("SNLDisplay"):
		var snl_display = dsm.get_node("SNLDisplay")
		snl_display.visible = true
		_debug("SNLDisplay shown via TransitionManager")
	
	# 2. Changer la couleur du BG
	var bg = _get_bg_node()
	if bg:
		var white_color = Color(1.0, 1.0, 1.0, 1.0)
		var tween = create_tween()
		tween.tween_property(bg, "modulate", white_color, 0.5)
		await tween.finished
		_debug("BG color changed to white")

func _get_bg_node() -> Node:
	# Chercher le BG dans différents endroits possibles
	var main_scene = get_tree().current_scene
	if main_scene:
		var bg = main_scene.get_node_or_null("BG")
		if bg:
			return bg
	
	var dsm = get_parent()
	if dsm:
		var bg = dsm.get_parent().get_node_or_null("BG")
		if bg:
			return bg
	
	return null

func show_ptext(cmd: Dictionary) -> void:
	var id = cmd.get("id", "")
	if id == "":
		_debug("show_ptext: id is empty")
		return
	if _ptexts.has(id):
		var old = _ptexts[id]
		if is_instance_valid(old):
			old.queue_free()
		_ptexts.erase(id)
	var lbl := RichTextLabel.new()
	lbl.name = "ptext_%s" % id
	lbl.bbcode_enabled = true
	lbl.text = id
	lbl.modulate.a = 0.0
	
	lbl.size.x = cmd.x
	lbl.size.y = cmd.y
	if cmd.size != null:
		var sz: int = int(cmd.size)
		lbl.add_theme_font_size_override("normal_font_size", sz)
	var color_col = _parse_color(cmd.color)
	if color_col:
		lbl.add_theme_color_override("default_color", color_col)
	var root = get_parent()
	if not root: return
	root.add_child(lbl)
	var vp_size = get_viewport().get_visible_rect().size
	if cmd.x == null or cmd.y == null:
		lbl.position = Vector2((vp_size.x - lbl.get_size().x)/2.0, (vp_size.y - lbl.get_size().y)/2.0)
	else:
		lbl.position = Vector2(cmd.x, cmd.y)
	_ptexts[id] = lbl

	var anim_in = _normalize_anim(cmd.anim_in, true)
	var anim_out = _normalize_anim(cmd.anim_out, false)
	await _animate_text(lbl, anim_in, true)

	var lifetime = cmd.lifetime_ms
	if lifetime == -1:
		lifetime = default_ptext_lifetime_ms
	if lifetime > 0:
		await get_tree().create_timer(lifetime / 1000.0).timeout
		await _animate_text(lbl, anim_out, false)
		if is_instance_valid(lbl):
			lbl.queue_free()
		_ptexts.erase(id)

func hide_ptext(cmd: Dictionary) -> void:
	var id = cmd.id
	if not _ptexts.has(id):
		return
	var lbl = _ptexts[id]
	if not is_instance_valid(lbl):
		_ptexts.erase(id)
		return
	var anim_out = _normalize_anim(cmd.anim_out, false)
	await _animate_text(lbl, anim_out, false)
	if is_instance_valid(lbl):
		lbl.queue_free()
	_ptexts.erase(id)

func _normalize_anim(name: String, entering: bool) -> String:
	if name == null: return "fade"
	var n = name.to_lower()
	match n:
		"fadeinleft": return "slide_left"
		"fadeoutleft": return "slide_left"
		"fadeinright": return "slide_right"
		"fadeoutright": return "slide_right"
		"fadein": return "fade"
		"fadeout": return "fade"
		"fade": return "fade"
		"slideinleft": return "slide_left"
		"slideinright": return "slide_right"
		_:
			return n

func free_ptext(id: String) -> void:
	if not _ptexts.has(id):
		return
	var lbl = _ptexts[id]
	if is_instance_valid(lbl):
		lbl.queue_free()
	_ptexts.erase(id)

func _animate_text(lbl: RichTextLabel, anim: String, entering: bool) -> void:
	var dur = default_transition_duration
	var tw = create_tween()
	match anim:
		"fade", "":
			if entering:
				lbl.modulate.a = 0.0
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
		"instant":
			lbl.modulate.a = 1.0 if entering else 0.0
		"slide":
			var offset = Vector2(0, 60)
			if entering:
				lbl.position += offset
				lbl.modulate.a = 0.0
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position - offset, dur)
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position + offset, dur)
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
		"slide_left":
			var off_l = Vector2(-120, 0)
			if entering:
				lbl.position += off_l
				lbl.modulate.a = 0.0
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position - off_l, dur)
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position + off_l, dur)
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
		"slide_right":
			var off_r = Vector2(120,0)
			if entering:
				lbl.position += off_r
				lbl.modulate.a = 0.0
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position - off_r, dur)
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.set_parallel(true)
				tw.tween_property(lbl, "position", lbl.position + off_r, dur)
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
		"scale":
			if entering:
				lbl.scale = Vector2(0.8,0.8)
				lbl.modulate.a = 0.0
				tw.set_parallel(true)
				tw.tween_property(lbl, "scale", Vector2(1.0,1.0), dur)
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.set_parallel(true)
				tw.tween_property(lbl, "scale", Vector2(0.8,0.8), dur)
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
		_:
			if entering:
				lbl.modulate.a = 0.0
				tw.tween_property(lbl, "modulate:a", 1.0, dur)
			else:
				tw.tween_property(lbl, "modulate:a", 0.0, dur)
	if tw:
		await tw.finished

func _parse_color(code: String):
	if code == "" : return null
	var c = code.strip_edges()
	if c.begins_with("0x"):
		var hex = c.substr(2, c.length() - 2)
		if hex.length() == 6:
			return Color("#%s" % hex)
		elif hex.length() == 8:
			return Color("#%s" % hex)
	if c.begins_with("#"):
		return Color(c)
	return null

func _ensure_image_layer(layer_name: String) -> Control:
	if _image_layers.has(layer_name):
		return _image_layers[layer_name]
	var parent = get_parent()
	if not parent:
		return null
	var holder := Control.new()
	holder.name = "IMG_layer_%s" % layer_name
	holder.anchor_right = 1.0
	holder.anchor_bottom = 1.0
	holder.grow_horizontal = Control.GROW_DIRECTION_BOTH
	holder.grow_vertical = Control.GROW_DIRECTION_BOTH
	parent.add_child(holder)
	_image_layers[layer_name] = holder
	return holder

func show_image(cmd: Dictionary) -> void:
	var path: String = cmd.get("path", "")
	if path == "":
		_debug("show_image: path is empty")
		return
	
	var tex = load("res://%s" % path) if not path.begins_with("res://") else load(path)
	if not tex:
		_debug("show_image: texture not found %s" % path)
		return
	
	var layer := _ensure_image_layer(cmd.get("layer", "default"))
	if not layer:
		return
	
	var sprite := TextureRect.new()
	sprite.texture = tex
	sprite.name = "img_%s" % str(Time.get_ticks_msec())
	layer.add_child(sprite)

	var vp_size = get_viewport().get_visible_rect().size
	var x = cmd.get("x", null)
	var y = cmd.get("y", null)
	
	if x == null or y == null:
		sprite.position = Vector2((vp_size.x - tex.get_width()) * 0.5, (vp_size.y - tex.get_height()) * 0.5)
	else:
		sprite.position = Vector2(x, y)

	var dur: float = cmd.get("dur", 1.0)  # Utiliser dur au lieu de duration
	var effect: String = cmd.get("effect", "fade")  # Utiliser effect au lieu de method

	match effect:
		"fade":
			sprite.modulate.a = 0.0  # Commencer invisible
			var tw = create_tween()
			tw.tween_property(sprite, "modulate:a", 1.0, dur)
			await tw.finished
		"slide":
			sprite.modulate.a = 0.0
			sprite.position.y += 64
			var tws = create_tween()
			tws.set_parallel(true)
			tws.tween_property(sprite, "modulate:a", 1.0, dur)
			tws.tween_property(sprite, "position:y", sprite.position.y - 64, dur)
			await tws.finished
		"instant":
			sprite.modulate.a = 1.0
		_:
			sprite.modulate.a = 0.0
			var tw2 = create_tween()
			tw2.tween_property(sprite, "modulate:a", 1.0, dur)
			await tw2.finished
	var layer_name = cmd.get("layer", "default")
	_debug("show_image: layer_name set to %s" % layer_name)

func hide_image(cmd: Dictionary) -> void:
	var dur = cmd.get("dur", 1.0)
	
	var layer_name = cmd.get("layer", "default")
	var layer = _ensure_image_layer(layer_name)
	if not layer:
		_debug("hide_image: layer not found: " + layer_name)
		return
	
	# Cacher TOUS les enfants de ce layer
	for child in layer.get_children():
		if child is TextureRect:
			var tw = create_tween()
			tw.tween_property(child, "modulate:a", 0.0, dur)
			await tw.finished
			child.queue_free()
	_debug("hide_image: layer_name set to %s" % layer_name)

func free_image_layer(layer_name: String) -> void:
	var layer: Control = _image_layers.get(layer_name, null)
	if not layer:
		_debug("free_image: layer not found %s" % layer_name)
		return
	layer.queue_free()
	_image_layers.erase(layer_name)
	_debug("Image layer freed %s" % layer_name)


func transition_to_style(from_style: DisplayStyle, to_style: DisplayStyle) -> void:
	_debug("Style transition %s -> %s" % [DisplayStyle.keys()[from_style], DisplayStyle.keys()[to_style]])
	
	# Sélectionne le type de transition selon les styles
	var transition_type = _get_transition_type(from_style, to_style)
	
	# Joue l'effet sonore approprié
	_play_transition_sound(from_style, to_style)
	
	# Exécute la transition
	match transition_type:
		TransitionType.FADE:
			_fade_transition(from_style, to_style)
		TransitionType.SLIDE:
			_slide_transition(from_style, to_style)
		TransitionType.DISSOLVE:
			_dissolve_transition(from_style, to_style)
		TransitionType.INSTANT:
			_instant_transition(from_style, to_style)

func _get_transition_type(from_style: DisplayStyle, to_style: DisplayStyle) -> TransitionType:
	# Définit le type de transition selon les styles
	if from_style == DisplayStyle.SNL and to_style == DisplayStyle.ADV:
		return TransitionType.FADE
	elif from_style == DisplayStyle.ADV and to_style == DisplayStyle.SNL:
		return TransitionType.SLIDE
	else:
		return default_transition_type

func _fade_transition(from_style: DisplayStyle, to_style: DisplayStyle) -> void:
	if current_tween:
		current_tween.kill()
	
	current_tween = create_tween()
	current_tween.set_parallel(true)
	
	# Animation de fade
	var from_node = _get_display_node(from_style)
	var to_node = _get_display_node(to_style)
	
	if from_node:
		current_tween.tween_property(from_node, "modulate:a", 0.0, default_transition_duration)
	
	if to_node:
		to_node.modulate.a = 0.0
		to_node.visible = true
		current_tween.tween_property(to_node, "modulate:a", 1.0, default_transition_duration)
	
	await current_tween.finished
	
	if from_node:
		from_node.visible = false
		from_node.modulate.a = 1.0
	
	emit_signal("transition_completed", from_style, to_style)
	_debug("Fade transition completed")

func _slide_transition(from_style: DisplayStyle, to_style: DisplayStyle) -> void:
	if current_tween:
		current_tween.kill()
	
	current_tween = create_tween()
	current_tween.set_parallel(true)
	
	var from_node = _get_display_node(from_style)
	var to_node = _get_display_node(to_style)
	
	if from_node and to_node:
		var screen_width = get_viewport().get_visible_rect().size.x
		
		# Position initiale du nouveau node
		to_node.position.x = screen_width
		to_node.visible = true
		
		# Animation de glissement
		current_tween.tween_property(from_node, "position:x", -screen_width, default_transition_duration)
		current_tween.tween_property(to_node, "position:x", 0, default_transition_duration)
	
	await current_tween.finished
	
	if from_node:
		from_node.visible = false
		from_node.position.x = 0
	
	emit_signal("transition_completed", from_style, to_style)
	_debug("Slide transition completed")

func _dissolve_transition(from_style: DisplayStyle, to_style: DisplayStyle) -> void:
	# Transition avec un effet de dissolution
	_fade_transition(from_style, to_style)

func _instant_transition(from_style: DisplayStyle, to_style: DisplayStyle) -> void:
	var from_node = _get_display_node(from_style)
	var to_node = _get_display_node(to_style)
	
	if from_node:
		from_node.visible = false
	
	if to_node:
		to_node.visible = true
	
	emit_signal("transition_completed", from_style, to_style)
	_debug("Instant transition completed")

func _get_display_node(style: DisplayStyle) -> Control:
	# Récupère le node d'affichage correspondant au style
	var parent = get_parent()
	if not parent:
		return null
	
	match style:
		DisplayStyle.SNL, DisplayStyle.DYNAMIC_SNL:
			return parent.get_node_or_null("SNLDisplay")
		DisplayStyle.ADV:
			return parent.get_node_or_null("ADVDisplay")
	
	return null

func _play_transition_sound(_from_style: DisplayStyle, _to_style: DisplayStyle) -> void:
	# Ici on pourrait jouer des sons spécifiques selon la transition
	# Pour l'instant, on peut laisser vide ou jouer un son générique
	pass

func set_transition_duration(duration: float) -> void:
	default_transition_duration = duration

func modulate_background_color(color: Color) -> void:
	current_tween = create_tween()
	current_tween.set_parallel(true)

	current_tween.tween_property(self, "modulate", color, default_transition_duration)
	# Modifie la couleur de fond pour les transitions
	var background = get_viewport().get_canvas_layer().get_node_or_null("Background")
	if background:
		background.modulate = color
		
func set_transition_type(type: TransitionType) -> void:
	default_transition_type = type

# === Helpers visuels supplémentaires ===

# Crossfade d'un TextureRect nommé "BG" au niveau parent (ex: scène principale)
func crossfade_background(new_path: String, duration: float = 1.0) -> void:
	var parent = get_parent()
	if not parent:
		return
	var bg = parent.get_node_or_null("BG")
	if not bg or not (bg is TextureRect):
		_debug("BG node introuvable pour crossfade")
		return
	var tex = load(new_path)
	if not tex:
		_debug("Texture non trouvée: %s" % new_path)
		return
	# Crée un overlay pour transition
	var overlay := TextureRect.new()
	overlay.texture = tex
	overlay.stretch_mode = bg.stretch_mode
	overlay.size = bg.size
	parent.add_child(overlay)
	overlay.z_index = bg.z_index + 1
	overlay.modulate.a = 0.0
	var tw = create_tween()
	tw.tween_property(overlay, "modulate:a", 1.0, duration)
	await tw.finished
	bg.texture = tex
	overlay.queue_free()
	_debug("Background crossfade done -> %s" % new_path)

# Affiche une image plein écran "CG" (crée si absent)
func show_cg(path: String, duration: float = 0.3) -> void:
	var parent = get_parent()
	if not parent: return
	var node = parent.get_node_or_null("CG")
	if not node:
		node = TextureRect.new()
		node.name = "CG"
		node.anchor_right = 1.0
		node.anchor_bottom = 1.0
		node.grow_horizontal = Control.GROW_DIRECTION_BOTH
		node.grow_vertical = Control.GROW_DIRECTION_BOTH
		parent.add_child(node)
	var tex = load(path)
	if not tex: return
	node.texture = tex
	node.visible = true
	node.modulate.a = 0.0
	var tw = create_tween()
	tw.tween_property(node, "modulate:a", 1.0, duration)
	await tw.finished
	_debug("CG shown %s" % path)

func hide_cg(duration: float = 0.3) -> void:
	var parent = get_parent()
	if not parent: return
	var node = parent.get_node_or_null("CG")
	if not node: return
	var tw = create_tween()
	tw.tween_property(node, "modulate:a", 0.0, duration)
	await tw.finished
	node.queue_free()
	_debug("CG hidden")

# Pour éléments UI overlay (nommés UIContainer)
func show_ui_overlay(path: String, duration: float = 0.25) -> void:
	var parent = get_parent()
	if not parent: return
	var holder = parent.get_node_or_null("UIContainer")
	if not holder:
		holder = Control.new()
		holder.name = "UIContainer"
		holder.anchor_right = 1.0
		holder.anchor_bottom = 1.0
		parent.add_child(holder)
	var tex = load(path)
	if not tex: return
	var ui_tex := TextureRect.new()
	ui_tex.texture = tex
	ui_tex.modulate.a = 0.0
	holder.add_child(ui_tex)
	var tw = create_tween()
	tw.tween_property(ui_tex, "modulate:a", 1.0, duration)
	await tw.finished
	_debug("UI overlay added %s" % path)

func clear_ui_overlays(duration: float = 0.2) -> void:
	var parent = get_parent()
	if not parent: return
	var holder = parent.get_node_or_null("UIContainer")
	if not holder: return
	for c in holder.get_children():
		var tw = create_tween()
		tw.tween_property(c, "modulate:a", 0.0, duration)
		await tw.finished
		c.queue_free()
	_debug("UI overlays cleared")

func _debug(msg: String) -> void:
	if enable_debug:
		print("[TransitionManager] ", msg)
