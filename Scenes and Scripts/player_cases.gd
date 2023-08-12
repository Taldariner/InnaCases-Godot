extends Control

var case_ui_template = preload("res://Scenes and Scripts/case_ui.tscn")

@export var avalible_cases : Array[WeaponSkinsCase]

func _ready():
	for case in avalible_cases:
		var new_case_ui = case_ui_template.instantiate()
		new_case_ui.case = case
		new_case_ui.update(new_case_ui.case)
		$VScrollBar/GridContainer.add_child(new_case_ui)
