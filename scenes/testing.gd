extends Node2D

@export var SNLDisplay: SNLDisplay

func _ready():
	# Load the chapter data
	var chapter_path = "res://scene1_test.json"
	DialogueManager.load_chapter(chapter_path)
	DialogueManager.line_changed.connect(_on_line_changed)
	SNLDisplay.typing_finished.connect(_on_typing_finished)
	DialogueManager.start_dialogue()

func _on_line_changed(current_line: DialogueData):
	print("Display Style: ", current_line.display_style, " - Type: ", current_line.type)
	match current_line.display_style:
		1:
			SNLDisplay.display_line(current_line)
		DialogueData.DisplayStyle.ADV:
			print("ADV line", current_line.character, " - ", current_line.text)
			DialogueManager.next_line()
		_:
			_process_system_line(current_line)

	# if current_line.display_style == DialogueData.DisplayStyle.SNL and SNLDisplay.is_typing == false:
	# 	SNLDisplay.display_line(current_line)
	# else:
	# 	DialogueManager.next_line()

func _process_system_line(line: DialogueData):
	match line.type:
		"chapter_title":
			print("Chapter title: ", line.text)
		"background":
			print("Background change: ", line.image)
		"sound_effect":
			print("Sound effect: ", line.audio)
		"music":
			print("Music change: ", line.audio)
		"cg":
			print("CG change: ", line.image)
		"snl_monologue":
			print("SNL Monologue: ", line.text)
		_:
			print("Unknown line type: ", line.type)
	
	DialogueManager.next_line()

func _on_typing_finished():
	return

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		if SNLDisplay.is_typing:
			SNLDisplay.skip_typing()
		elif not SNLDisplay.all_segments_finished:
			SNLDisplay.display_next_segment()
		else:
			DialogueManager.next_line()
	elif Input.is_action_just_pressed("ui_cancel"):
		DialogueManager.previous_line()
	elif Input.is_action_just_pressed("ui_select"):
		DialogueManager.end_dialogue()
