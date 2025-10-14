class_name CharacterResource
extends Resource
@export var character_name: String
@export var default_color: Color = Color.WHITE
@export var sprite: Array[CharacterSprite] = []

func get_sprite(sprite_name: String) -> Texture2D:
    for sprite in sprite:
        if sprite.sprite_name == sprite_name:
            return sprite.texture
    if sprite.size() > 0:
        return sprite[0].texture
    return null

func get_sprite_names() -> Array[String]:
    var names: Array[String] = []
    for sprite in sprite:
        names.append(sprite.sprite_name)
    return names