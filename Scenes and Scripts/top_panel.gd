extends Control

@onready var player_money = $PlayerMoney

func _ready():
	update_player_money()

func update_player_money():
	player_money.text = str(PlayerManager.global_player_data.player_money) # str(money)

func _process(delta):
	#TODO Rework it
	player_money.text = str(PlayerManager.global_player_data.player_money) # str(money)
