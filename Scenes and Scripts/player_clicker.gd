extends Control

var money : int = 0
var clicker_effect = preload("res://Scenes and Scripts/clicker_text_effect.tscn")

@onready var player_money = $TopPanel/PlayerMoney

func _ready():
	player_money.text = str(money)
	
func _on_control_gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		money += 1
		player_money.text = str(money)
		var new_clicker_effect = clicker_effect.instantiate()
		new_clicker_effect.position = event.position
		$ClickerZone.add_child(new_clicker_effect)
