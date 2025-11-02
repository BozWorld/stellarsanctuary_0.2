class_name CharacterResource
extends Resource
@export var character_name: String
@export var default_color: Color = Color.WHITE
@export var sprite: Array[CharacterSprite] = []
@export var portrait: Array[CharacterSprite] = []

func get_sprite(sprite_name: String) -> Texture2D:
    return _find_texture_in_list(sprite, sprite_name)

func get_portrait(expr: String) -> Texture2D:
    return _find_texture_in_list(portrait, expr)

func get_sprite_names() -> Array[String]:
    var names: Array[String] = []
    for spr in sprite:
        names.append(spr.sprite_name)
    return names

# Helper générique: recherche robuste dans une liste de CharacterSprite
func _find_texture_in_list(list: Array[CharacterSprite], name: String) -> Texture2D:
    if name == null or name.strip_edges() == "":
        return list[0].texture if list.size() > 0 else null

    # 1) Exact
    for item in list:
        if item.sprite_name == name:
            return item.texture

    var target := name.to_lower()

    # 2) Insensible à la casse
    for item in list:
        if item.sprite_name.to_lower() == target:
            return item.texture

    # 3) Variante préfixée par le nom du personnage (ex: "euphie_normal_speak")
    var prefix := (character_name if character_name != null else "").to_lower()
    if prefix != "":
        var prefixed := prefix + "_" + target
        for item in list:
            if item.sprite_name.to_lower() == prefixed:
                return item.texture

    # 4) Fallback: premier élément si disponible
    return list[0].texture if list.size() > 0 else null