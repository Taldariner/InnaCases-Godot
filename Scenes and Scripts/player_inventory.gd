extends Control

var skin_ui_template = preload("res://Scenes and Scripts/SkinUI.tscn")

@export var rarity_colors_dictionary = {
	"Common": Color(0.5, 0.5, 0.5, 1.0),
	"Uncommon": Color(0.2, 1.0, 0.2, 1.0),
	"Rare": Color(0.2, 0.2, 1.0, 1.0),
	"Epic": Color(0.75, 0.0, 0.75, 1.0),
	"Legendary": Color(1.0, 0.2, 0.2, 1.0),
	"Special": Color(1.0, 0.75, 0.0, 1.0)
	#"Special": Color(0.2, 1.0, 0.7, 0.8)
}

#@export var player_user_skins_array : Array[WeaponSkin]

func _ready():
	for skin in PlayerManager.player_skins:
		var new_skin_ui = skin_ui_template.instantiate()
		print(skin.skin_rarity)
		new_skin_ui.update(skin.skin_name, rarity_colors_dictionary[skin.skin_rarity], skin.skin_texture)
		$ScrollContainer/PlayerInventoryGrid.add_child(new_skin_ui)
