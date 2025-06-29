# TextParser.gd
class_name TextParser
extends Node

# Signaux
signal display_style_changed(new_style: int)
signal text_processed(processed_text: String, display_style: int)

# Enums (référence aux enums du DisplayStyleManager)
enum DisplayStyle { SNL, DYNAMIC_SNL, ADV }

func process_text(raw_text: String) -> void:
	var display_style = _extract_display_style(raw_text)
	var cleaned_text = _clean_text(raw_text)
	"hello"
	# Émet le changement de style si détecté
	if display_style != -1:
		emit_signal("display_style_changed", display_style)
	
	# Émet le texte traité
	emit_signal("text_processed", cleaned_text, display_style if display_style != -1 else DisplayStyle.SNL)

func _extract_display_style(text: String) -> int:
	# Analyse les tags spéciaux pour déterminer le style d'affichage
	if "[ADV]" in text:
		return DisplayStyle.ADV
	elif "[SNL]" in text:
		return DisplayStyle.SNL
	elif "[DYNAMIC_SNL]" in text:
		return DisplayStyle.DYNAMIC_SNL
	
	return -1  # Pas de changement de style détecté

func _clean_text(text: String) -> String:
	# Nettoie le texte des tags spéciaux et formate
	var cleaned = text
	
	# Supprime les tags de style
	cleaned = cleaned.replace("[ADV]", "")
	cleaned = cleaned.replace("[SNL]", "")
	cleaned = cleaned.replace("[DYNAMIC_SNL]", "")
	
	# Remplace les marqueurs de retour à la ligne
	cleaned = cleaned.replace("`", "\n")
	
	# Supprime les espaces en trop
	cleaned = cleaned.strip_edges()
	
	return cleaned

func extract_dialogue_info(text: String) -> Dictionary:
	# Analyse le texte pour extraire des informations de dialogue
	var info = {
		"is_dialogue": false,
		"speaker": "",
		"text": text
	}
	
	# Détecte si c'est un dialogue (commence par des guillemets ou #dialogue tag)
	if text.begins_with('"') or "#dialogue" in text:
		info.is_dialogue = true
		# Ici on pourrait extraire le nom du personnage si le format le permet
	
	return info
