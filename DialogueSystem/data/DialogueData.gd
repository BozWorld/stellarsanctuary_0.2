class_name DialgueData
extends Resource

enum DisplayStyle {
    ADV,
    SNL,
    Dynamic_SNL
}

@export var type: String
@export var display_style: DisplayStyle = DisplayStyle.SNL
@export var text: String
@export var character: String
@export var portrait: String = ""
@export var image: String = ""
@export var audio: String = ""
@export var transition: String
@export var duration: int = 1000
@export var properties: Dictionary = {}