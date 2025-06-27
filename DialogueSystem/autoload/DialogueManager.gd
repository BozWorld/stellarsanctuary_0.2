# DialogueManager.gd - Singleton principal
extends Node

signal dialogue_started
signal dialogue_ended
signal line_changed(current_line: DialogueData)

var current_chapter: Array[DialogueData] = []
var current_index: int = 0
var is_playing: bool = false
var characters: Dictionary = {}

func load_chapter(file_path: String):
	current_chapter = DialogueParser.load_chapter(file_path)
	current_index = 0
	is_playing = false

func start_dialogue():
	if current_chapter.is_empty():
		push_error("No chapter loaded")
		return
	
	current_index = 0
	is_playing = true
	dialogue_started.emit()
	_process_current_line()

func next_line():
	if not is_playing:
		return
	
	current_index += 1
	if current_index >= current_chapter.size():
		end_dialogue()
		return
	
	_process_current_line()

func previous_line():
	if not is_playing or current_index <= 0:
		return
	
	current_index -= 1
	_process_current_line()

func end_dialogue():
	is_playing = false
	dialogue_ended.emit()

func get_current_line() -> DialogueData:
	if current_index < current_chapter.size():
		return current_chapter[current_index]
	return null

func _process_current_line():
	var current_line = get_current_line()
	if current_line:
		line_changed.emit(current_line)

# Pour debug
func print_chapter_info():
	print("Chapter loaded with ", current_chapter.size(), " entries")
	for i in range(min(5, current_chapter.size())):
		var line = current_chapter[i]
		print("Line ", i, ": ", line.type, " - ", line.text.substr(0, 50))
