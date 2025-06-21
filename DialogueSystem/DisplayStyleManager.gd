# DisplayStyleManager.gd
class_name DisplayStyleManager
extends Node

signal style_changed(new_style: DialogueData.DisplayStyle)

var current_style: DialogueData.DisplayStyle = DialogueData.DisplayStyle.ADV

# Références aux différents containers UI
@onready var adv_container: Control
@onready var snl_container: Control
@onready var dynamic_snl_container: Control

func setup_containers(adv: Control, snl: Control, dynamic_snl: Control):
	adv_container = adv
	snl_container = snl
	dynamic_snl_container = dynamic_snl

func switch_to_style(style: DialogueData.DisplayStyle):
	if current_style == style:
		return
	
	# Cache tous les containers
	hide_all_containers()
	
	# Affiche le container approprié
	match style:
		DialogueData.DisplayStyle.ADV:
			if adv_container:
				adv_container.visible = true
		DialogueData.DisplayStyle.SNL:
			if snl_container:
				snl_container.visible = true
		DialogueData.DisplayStyle.DYNAMIC_SNL:
			if dynamic_snl_container:
				dynamic_snl_container.visible = true
	
	current_style = style
	style_changed.emit(style)

func hide_all_containers():
	if adv_container:
		adv_container.visible = false
	if snl_container:
		snl_container.visible = false
	if dynamic_snl_container:
		dynamic_snl_container.visible = false

func get_current_container() -> Control:
	match current_style:
		DialogueData.DisplayStyle.ADV:
			return adv_container
		DialogueData.DisplayStyle.SNL:
			return snl_container
		DialogueData.DisplayStyle.DYNAMIC_SNL:
			return dynamic_snl_container
	return null

# ---