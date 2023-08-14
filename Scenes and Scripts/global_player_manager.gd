extends Node

class_name GlobalPlayerManager

var result
var save_game_path = "user://game_save.tres"
var global_player_data #: GlobalPlayerData = load("res://Scenes and Scripts/global_player_data.gd").new()
		
func _ready():
	global_player_data = GlobalPlayerData.new()
	#player_data_manager.load_player_data()
	if ResourceLoader.exists(save_game_path):
		#return load(save_game_path)
		print("Load game save")
		global_player_data = ResourceLoader.load(save_game_path)
	else:
		#return null
		print("New game save")
	print(global_player_data.player_money)

func save_player_data():
	result = ResourceSaver.save(global_player_data, save_game_path)
	assert(result == OK)
