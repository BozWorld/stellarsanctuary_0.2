# InkStoryLoader.gd
class_name InkStoryLoader
extends Node

# Signaux
signal story_loaded(success: bool)
signal story_continued(text: String)
signal story_step(text: String, tags)

# Constantes
const SAVE_PATH := "res://saves/save.save"

# Variables
var ink_player: InkPlayer

func _ready() -> void:
	_initialize_ink_player()

func _initialize_ink_player() -> void:
	ink_player = InkPlayer.new()
	add_child(ink_player)
	ink_player.ink_file = load("res://INK/scene1_clean.json")
	ink_player.loads_in_background = true
	ink_player.connect("loaded", Callable(self, "_on_ink_story_loaded"))

func _on_ink_story_loaded(success: bool) -> void:
	# emit_signal("story_loaded", success)
	continue_story()

func load_story() -> void:
	ink_player.create_story()

func _give_current_tags():
	var tags = ink_player.get_current_tags()
	return tags

func continue_story() -> void:
	if ink_player.can_continue:
		var current_text = ink_player.continue_story()
		var tags = _give_current_tags()
		emit_signal("story_step", current_text, tags)
		# emit_signal("story_continued", current_text)

func can_continue() -> bool:
	return ink_player.can_continue if ink_player else false
