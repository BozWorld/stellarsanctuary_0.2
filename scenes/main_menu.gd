extends Control

@export var play_scene: PackedScene
@export var sound: PackedScene
@export var continue_scene: PackedScene
@export var gallery_scene: PackedScene
var button_pressed = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_bt_start_pressed() -> void:
	get_tree().change_scene_to_packed(play_scene)
	pass # Replace with function body.


func _on_bt_music_pressed() -> void:
	get_tree().change_scene_to_packed(sound)
	pass # Replace with function body.


func _on_bt_continue_pressed() -> void:
	get_tree().change_scene_to_packed(continue_scene)
	pass # Replace with function body.


func _on_bt_gallery_pressed() -> void:
	get_tree().change_scene_to_packed(gallery_scene)
	pass # Replace with function body.


func _on_bt_quit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_bt_screen_pressed() -> void:
	if button_pressed == false:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		button_pressed = true
		return
	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		button_pressed = false
		return
	pass # Replace with function body.
