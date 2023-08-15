extends Control

var skin_ui_template = preload("res://Scenes and Scripts/SkinUI.tscn")

#@export var player_user_skins_array : Array[WeaponSkin]

func _ready():
	for skin in PlayerManager.global_player_data.player_skins:
		var new_skin_ui = skin_ui_template.instantiate()
		#print(skin.skin_rarity)
		new_skin_ui.update(skin)
		$ScrollContainer/PlayerInventoryGrid.add_child(new_skin_ui)
