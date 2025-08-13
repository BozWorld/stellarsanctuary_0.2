extends RichTextLabel

var full_text: String = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _add_full_text(new_text: String) -> void:
	full_text = new_text