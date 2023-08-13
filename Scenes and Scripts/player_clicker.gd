extends Control

var clicker_effect = preload("res://Scenes and Scripts/clicker_text_effect.tscn")

@onready var top_panel = $TopPanel

func _on_control_gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		PlayerManager.player_money += 1
		var new_clicker_effect = clicker_effect.instantiate()
		new_clicker_effect.position = event.position
		$ClickerZone.add_child(new_clicker_effect)
		top_panel.update_player_money()
