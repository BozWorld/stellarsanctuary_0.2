# InkStoryLoader.gd
class_name InkStoryLoader
extends Node

# Signaux
signal story_loaded(success: bool)
signal story_continued(text: String)
signal can_continue_section(success: bool)

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
	print("Story loaded: ", success)
	emit_signal("story_loaded", success)

func load_story() -> void:
	ink_player.create_story()

func _give_tag():
	var tags = ink_player.get_current_tags()
	return tags

func continue_story() -> void:
	if ink_player.can_continue:
		var current_text = ink_player.continue_story()
		emit_signal("story_continued", current_text)
	else:
		if ink_player.has_choices:
			ink_player.choose_choice_index(0)
			emit_signal("can_continue_section", true)
			print("No more story content to continue")

func can_continue() -> bool:
	return ink_player.can_continue if ink_player else false
