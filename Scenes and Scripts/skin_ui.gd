extends Control

@export var rarity_colors_dictionary = {
	"Common": Color(0.5, 0.5, 0.5, 1.0),
	"Uncommon": Color(0.2, 1.0, 0.2, 1.0),
	"Rare": Color(0.2, 0.2, 1.0, 1.0),
	"Epic": Color(0.75, 0.0, 0.75, 1.0),
	"Legendary": Color(1.0, 0.2, 0.2, 1.0),
	"Special": Color(1.0, 0.75, 0.0, 1.0)
	#"Special": Color(0.2, 1.0, 0.7, 0.8)
}

func update(skin):
	$SkinTexture/SkinRarityColorRect/SkinName.text = skin.skin_name
	$SkinTexture/SkinRarityColorRect.color = rarity_colors_dictionary[skin.skin_rarity]
	$SkinTexture.texture = skin.skin_texture
