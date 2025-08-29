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

var current_tween: Tween
var audio_player: AudioStreamPlayer

func _ready() -> void:
	# Initialise l'audio pour les effets sonores de transition
	audio_player = AudioStreamPlayer.new()
	add_child(audio_player)

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
