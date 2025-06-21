# DialogueParser.gd - Parse les JSON
class_name DialogueParser
extends RefCounted

static func load_chapter(file_path: String) -> Array[DialogueData]:
	var file = FileAccess.open(file_path, FileAccess.READ)
	if not file:
		push_error("Cannot open file: " + file_path)
		return []
	
	var json_string = file.get_as_text()
	file.close()
	
	var json = JSON.new()
	var parse_result = json.parse(json_string)
	
	if parse_result != OK:
		push_error("Failed to parse JSON: " + file_path)
		return []
	
	var data = json.data
	var dialogue_array: Array[DialogueData] = []
	
	# Parse characters
	var characters = {}
	if data.has("characters"):
		for char_id in data.characters:
			var char_data = data.characters[char_id]
			var character = Character.new()
			character.name = char_data.get("name", "")
			character.color = Color(char_data.get("color", "#ffffff"))
			character.has_portraits = char_data.get("has_portraits", false)
			characters[char_id] = character
	
	# Parse dialogue entries
	if data.has("dialogue"):
		for entry in data.dialogue:
			var dialogue_data = DialogueData.new()
			dialogue_data.type = entry.get("type", "")
			dialogue_data.text = entry.get("text", "")
			dialogue_data.character = entry.get("character", "")
			dialogue_data.portrait = entry.get("portrait", "")
			dialogue_data.image = entry.get("image", "")
			dialogue_data.audio = entry.get("audio", "")
			dialogue_data.transition = entry.get("transition", "")
			dialogue_data.duration = entry.get("duration", 1000)
			dialogue_data.properties = entry.get("properties", {})
			
			# Détermine le style basé sur le type
			var style_str = entry.get("style", "")
			match style_str:
				"SNL":
					dialogue_data.style = DialogueData.DisplayStyle.SNL
				"DYNAMIC_SNL":
					dialogue_data.style = DialogueData.DisplayStyle.DYNAMIC_SNL
				_:
					dialogue_data.style = DialogueData.DisplayStyle.ADV
			
			dialogue_array.append(dialogue_data)
	
	return dialogue_array

# ---