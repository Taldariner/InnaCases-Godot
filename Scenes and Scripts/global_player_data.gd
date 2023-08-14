extends Resource

class_name GlobalPlayerData

@export var player_name : String = "Player"

@export var player_money : int = 0
@export var player_skins : Array[WeaponSkin] = []

'''
var save_game_path = "user://game_save.tres"

func save_player_data():
	#var save_game = FileAccess.open("user://player_save.save", FileAccess.WRITE)
	
	#var name_string = JSON.stringify(player_name)
	#save_game.store_line(name_string)
	
	#var money_string = JSON.stringify(player_money)
	#save_game.store_line(money_string)
	
	#var name_string = JSON.stringify(player_name)
	#save_game.store_line(name_string)
	
	ResourceSaver.save(self, save_game_path)
	
func load_player_data():
	if not FileAccess.file_exists("user://game_save.tres"):
		return  Error! We dont have a save to load.
	if ResourceLoader.exists(save_game_path):
		return load(save_game_path)
	else:
		return null
'''
