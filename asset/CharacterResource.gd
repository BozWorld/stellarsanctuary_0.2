class_name CharacterResource
extends Resource
@export var character_name: String
@export var default_color: Color = Color.WHITE
@export var sprite: Array[CharacterSprite] = []
@export var portrait: Array[CharacterSprite] = []

func get_sprite(sprite_name: String) -> Texture2D:
    if sprite_name == null or sprite_name.strip_edges() == "":
        return sprite[0].texture if sprite.size() > 0 else null
    # Match exact d'abord
    for s in sprite:
        if s.sprite_name == sprite_name:
            return s.texture
    # Puis match insensible à la casse
    var target := sprite_name.to_lower()
    for s in sprite:
        if s.sprite_name.to_lower() == target:
            return s.texture
    # Fallback: premier sprite si disponible
    return sprite[0].texture if sprite.size() > 0 else null

func get_portrait(expr: String) -> Texture2D:
    if expr == null or expr.strip_edges() == "":
        return portrait[0].texture if portrait.size() > 0 else null
    # Match exact d'abord
    for p in portrait:
        if p.sprite_name == expr:
            return p.texture
    # Puis match insensible à la casse
    var target := expr.to_lower()
    for p in portrait:
        if p.sprite_name.to_lower() == target:
            return p.texture
    # Fallback: premier portrait si disponible
    return portrait[0].texture if portrait.size() > 0 else null

func get_sprite_names() -> Array[String]:
    var names: Array[String] = []
    for sprite in sprite:
        names.append(sprite.sprite_name)
    return names