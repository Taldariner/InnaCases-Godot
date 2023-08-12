extends Control

func update(skin_name, skin_rarity_color, skin_texture):
	$SkinTexture/SkinRarityColorRect/SkinName.text = skin_name
	$SkinTexture/SkinRarityColorRect.color = skin_rarity_color
	$SkinTexture.texture = skin_texture
