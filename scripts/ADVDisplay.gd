# ADVDisplay.gd
class_name ADVDisplay
extends Control

# Signaux
signal continue_requested()

# Enums
enum TextState { IDLE, ANIMATING, COMPLETED }

@export var character_container: Control
@export var dialog_box: Control
@export var name_box: RichTextLabel
@export var text_label: RichTextLabel
@export var continue_button: Button

# Variables
var _characters := {}
var _current_text := ""
var _animation_speed := 30.0
var _is_animating := false
var _current_speaker := ""
var _current_speaker_color := Color.WHITE
var character_resource: Dictionary = {}

enum state { IDLE, ANIMATING, COMPLETED }
var current_state: state = state.IDLE

func _ready() -> void:
	_load_character_resources()
	if continue_button:
		continue_button.pressed.connect(_on_continue_pressed)
	# Récupérer les références depuis la scène
	if not text_label:
		text_label = get_node_or_null("PanelContainer/HBoxContainer/DialogueContaine/DialogueLabel")
	if not name_box:
		name_box = get_node_or_null("PanelContainer/HBoxContainer/DialogueContaine/NameLabel")
	if not character_container:
		character_container = get_node_or_null("PanelContainer/HBoxContainer/CharacterContainer")

	# S'assurer que le portrait passe toujours au-dessus des sprites
	var portrait := $CharacterPortrait as TextureRect
	if portrait:
		portrait.z_index = 100
		portrait.z_as_relative = false

func _load_character_resources():
	return 

func display_text(text: String) -> void:
	_current_text = text
	print("[ADVDisplay] Displaying text: %s with speaker: %s" % [text.substr(0,30), _current_speaker])
	
	# Mettre à jour le nom du speaker
	if name_box:
		if _current_speaker != "":
			name_box.text = _current_speaker
			name_box.modulate = _current_speaker_color
			name_box.visible = true
		else:
			name_box.visible = false
	
	await _animate_text()

func set_current_speaker(speaker_name: String, color_hex: String = "#FFFFFF") -> void:
	_current_speaker = speaker_name
	_current_speaker_color = _color_from_any(color_hex)
	# Met à jour immédiatement la boîte de nom si disponible
	if name_box:
		if _current_speaker != "":
			name_box.text = _current_speaker
			name_box.modulate = _current_speaker_color
			name_box.visible = true
		else:
			name_box.visible = false
	_debug("Speaker set to: %s with color: %s" % [speaker_name, color_hex])

func set_text_color(color_hex: String) -> void:
	_current_speaker_color = _color_from_any(color_hex)
	if name_box:
		name_box.modulate = _current_speaker_color

func show_character(character_name: String, sprite_name: String = "", char_position: Variant = null) -> void:
	if not character_container:
		_debug("No character container found")
		return
	
	var character: TextureRect
	var existed := _characters.has(character_name)
	if existed:
		character = _characters[character_name]
	else:
		character = TextureRect.new()
		character.name = "chara_" + character_name
		character_container.add_child(character)
		_characters[character_name] = character
	
	# Obtenir la texture depuis DisplayStyleManager
	var dsm = get_tree().get_first_node_in_group("display_style_manager")
	var texture: Texture2D
	var final_position = char_position
	
	if dsm:
		texture = dsm.get_character_sprite(character_name, sprite_name)
	
	# Fallback au système legacy si pas de texture
	if not texture and not sprite_name.is_empty():
		var candidates: Array[String] = []
		if sprite_name.begins_with("res://"):
			candidates.append(sprite_name)
		elif sprite_name.begins_with("asset/"):
			candidates.append("res://" + sprite_name)
		else:
			candidates.append("res://" + sprite_name)
			candidates.append("res://asset/" + sprite_name)
		for path in candidates:
			if ResourceLoader.exists(path):
				texture = load(path)
				break
	
	if texture:
		character.texture = texture
		# Position: si le perso existe déjà et que la position n'est pas fournie, on conserve sa position actuelle.
		if not existed or final_position != null:
			# Résolution de la position: keywords (left/center/right), "x,y" ou Vector2/null
			character.position = _resolve_position(final_position, texture)
		character.visible = true
		_debug("Character %s shown with sprite %s" % [character_name, sprite_name])
	else:
		_debug("Failed to load texture for character %s" % character_name)

func hide_character(character_name: String) -> void:
	if _characters.has(character_name):
		var character = _characters[character_name]
		character.visible = false
		_debug("Character %s hidden" % character_name)


func show_portrait(char_name: String, expression: String) -> void:
	var dsm = get_tree().get_first_node_in_group("display_style_manager")
	if dsm == null:
		_debug("No DisplayStyleManager found for portrait")
		return

	var tex: Texture2D = dsm.get_character_portrait(char_name, expression)
	if tex:
		$CharacterPortrait.texture = tex
		$CharacterPortrait.visible = true
		_debug("Portrait %s:%s shown" % [	char_name, expression])
	else:
		_debug("Portrait not found  %s %s" % [char_name, expression])

func show_portrait_path(res_path: String) -> void:
	var portrait := $CharacterPortrait as TextureRect
	if portrait and ResourceLoader.exists(res_path):
		portrait.texture = load(res_path)
		portrait.visible = true
	else:
		_debug("Failed to load portrait from path: %s" % res_path)

func hide_portrait():
	var portrait := $CharacterPortrait as TextureRect
	if portrait:
		portrait.visible = false
		portrait.texture = null

func get_character_portrait(char_name: String, expr: String) -> Texture2D:
	var res = _lookup_character(char_name)
	if res and res.has_method("get_portrait"):
		return res.call("get_portrait", expr)
	return null

func _lookup_character(char_name: String):
	# Lookup a character resource by name from the local cache or via the DisplayStyleManager
	if character_resource.has(char_name):
		return character_resource[char_name]
	var dsm = get_tree().get_first_node_in_group("display_style_manager")
	if dsm and dsm.has_method("get_character_resource"):
		return dsm.call("get_character_resource", char_name)
	return null


func clear_display() -> void:
	if text_label:
		text_label.text = ""
	current_state = state.IDLE

func _animate_text() -> void:
	if not text_label:
		_debug("No text label found for animation")
		return

	current_state = state.ANIMATING
	text_label.text = ""

	for i in range(_current_text.length()):
		if current_state != state.ANIMATING:
			break
		text_label.text = _current_text.substr(0, i + 1)
		await get_tree().create_timer(1.0 / _animation_speed).timeout
	
	_complete_text()

func _complete_text() -> void:
	current_state = state.COMPLETED
	if text_label:
		text_label.text = _current_text
	
	if continue_button:
		continue_button.visible = true

func _on_continue_pressed() -> void:
	if current_state == state.ANIMATING:
		_complete_text()
	elif current_state == state.COMPLETED:
		current_state = state.IDLE
		if continue_button:
			continue_button.visible = false
		emit_signal("continue_requested")

func _input(event: InputEvent) -> void:
	if visible and event is InputEventMouseButton and event.pressed:
		_on_continue_pressed()

func _debug(msg: String) -> void:
	print("[ADVDisplay] ", msg)

# Helpers
func _color_from_any(s: String) -> Color:
	var hex := (s if s != null else "").strip_edges()
	if hex == "":
		return Color.WHITE
	if not hex.begins_with("#") and hex.length() in [3, 4, 6, 8]:
		hex = "#" + hex
	var c := Color(hex)
	return c

# Résolution des positions pour les sprites de personnages
func _resolve_position(pos, texture: Texture2D) -> Vector2:
	var container: Control = character_container if character_container else self
	var cw: float = container.size.x
	var ch: float = container.size.y
	var ts: Vector2 = texture.get_size()

	# Valeur par défaut: centré bas (comme la plupart des ADV)
	var default_pos := Vector2(max((cw - ts.x) * 0.5, 0.0), max(ch - ts.y, 0.0))

	if pos == null:
		return default_pos

	if typeof(pos) == TYPE_VECTOR2:
		return pos

	if typeof(pos) == TYPE_STRING:
		var s := String(pos).strip_edges().to_lower()
		# Forme "x,y"
		if "," in s:
			var parts := s.split(",")
			if parts.size() >= 2:
				var x := float(parts[0])
				var y := float(parts[1])
				return Vector2(x, y)
		# Mots-clés simples
		match s:
			"left":
				return Vector2(0.0, max(ch - ts.y, 0.0))
			"center", "centre":
				return default_pos
			"right":
				return Vector2(max(cw - ts.x, 0.0), max(ch - ts.y, 0.0))
			"top-left":
				return Vector2(0.0, 0.0)
			"top", "top-center":
				return Vector2(max((cw - ts.x) * 0.5, 0.0), 0.0)
			"top-right":
				return Vector2(max(cw - ts.x, 0.0), 0.0)
			"bottom-left":
				return Vector2(0.0, max(ch - ts.y, 0.0))
			"bottom", "bottom-center":
				return default_pos
			"bottom-right":
				return Vector2(max(cw - ts.x, 0.0), max(ch - ts.y, 0.0))
			_:
				return default_pos

	return default_pos
