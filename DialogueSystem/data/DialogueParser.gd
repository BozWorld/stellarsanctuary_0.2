class_name DialogueParser
extends RefCounted

# # Make sure DialogueData is defined or imported before using it
# # Example: If DialogueData is a class in another file, use:
# # const DialogueData = preload("res://path/to/DialogueData.gd")

# static func load_chapter(file_path: String) -> Array[DialogueData]:
# 	var file = FileAccess.open(file_path, FileAccess.READ)
# 	if not file:
# 		push_error("Failed to open file: " + file_path)
# 		return []
# 	var json_string = file.get_as_text()
# 	file.close()