extends Control

@export var menu_buttons : Array[TextureButton]

var active_button_index = 0

func _on_button_clicker_pressed():
	button_clicked(0)
	get_tree().change_scene_to_file("res://Scenes and Scripts/player_clicker.tscn")

func _on_button_shop_pressed():
	button_clicked(1)
	get_tree().change_scene_to_file("res://Scenes and Scripts/player_cases.tscn")

func _on_button_inventory_pressed():
	button_clicked(2) # Replace with function body.
	get_tree().change_scene_to_file("res://Scenes and Scripts/player_inventory.tscn")

func _on_button_upgrades_pressed():
	button_clicked(3) # Replace with function body.
	get_tree().change_scene_to_file("res://Scenes and Scripts/player_upgrades.tscn")

func _on_button_settings_pressed():
	button_clicked(4) # Replace with function body.
	get_tree().change_scene_to_file("res://Scenes and Scripts/player_settings.tscn")

func button_clicked(button_index : int) -> void:
	#$MenuButtonsContainer.get_children()[active_button_index].texture_normal.a = 0.5
	#$MenuButtonsContainer.get_children()[button_index].texture_normal.a = 1.0
	pass
