# TestTextSegmentManager.gd
extends Node

@onready var text_segment_manager = $TextSegmentManager
@onready var current_segment_label = $UI/VBoxContainer/CurrentSegmentLabel
@onready var progress_label = $UI/VBoxContainer/ProgressLabel

func _ready():
	# Connecte les signaux pour les tests
	text_segment_manager.segment_ready.connect(_on_segment_ready)
	text_segment_manager.page_break_requested.connect(_on_page_break_requested)
	text_segment_manager.all_segments_completed.connect(_on_all_segments_completed)
	
	# Attend un peu puis démarre les tests
	await get_tree().create_timer(1.0).timeout
	_test_basic_functionality()

func _update_ui():
	var current_index = text_segment_manager.get_current_segment_index()
	var total_segments = text_segment_manager.get_total_segments()
	var current_segment = text_segment_manager.get_current_segment()
	
	if current_segment.has("text"):
		current_segment_label.text = "Current Segment: " + current_segment.text.substr(0, 100) + "..."
	else:
		current_segment_label.text = "Current Segment: None"
	
	progress_label.text = "Progress: " + str(current_index + 1) + "/" + str(total_segments)

func _test_basic_functionality():
	print("=== TEST: Basic Functionality ===")
	
	# Test 1: Texte simple avec tags
	var test_tags = ["segment_break"]
	var test_text = "This is the first part of the text."
	
	print("Testing with text: ", test_text)
	print("Testing with tags: ", test_tags)
	
	text_segment_manager.process_text_with_tags(test_text, test_tags)

func _test_multiple_segments():
	print("=== TEST: Multiple Segments ===")
	
	# Test avec plusieurs segments
	var test_text = """Space is a mysterious thing. #segment_break
A vast sea of stars that doesn't ever seem to end. #new_page
For now, all we can do is watch the stars."""
	
	text_segment_manager.process_text_with_markers(test_text)

func _on_segment_ready(segment_text: String, segment_type: int):
	print("CALLBACK: Segment ready")
	print("  Text: ", segment_text)
	print("  Type: ", segment_type)
	
	_update_ui()
	
	# Simule l'avancement automatique après 3 secondes
	await get_tree().create_timer(3.0).timeout
	if text_segment_manager.has_more_segments():
		print("Auto-advancing to next segment...")
		text_segment_manager.advance_to_next_segment()

func _on_page_break_requested():
	print("CALLBACK: Page break requested!")
	current_segment_label.text = "PAGE BREAK - Screen cleared"

func _on_all_segments_completed():
	print("CALLBACK: All segments completed!")
	current_segment_label.text = "All segments completed!"
	
	# Lance le test suivant
	await get_tree().create_timer(2.0).timeout
	_test_multiple_segments()

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_SPACE:
			print("Manual advance requested")
			if text_segment_manager.has_more_segments():
				text_segment_manager.advance_to_next_segment()
		elif event.keycode == KEY_D:
			print("Debug info requested")
			text_segment_manager.debug_print_segments()
