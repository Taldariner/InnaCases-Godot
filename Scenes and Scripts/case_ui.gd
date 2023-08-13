extends Control

var case : WeaponSkinsCase

func update(case : WeaponSkinsCase):
	$SkinTexture/CaseName.text = case.case_name
	$SkinTexture/CasePrice.text = str(case.case_price)
	$SkinTexture.texture = case.case_texture

func _on_gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if(PlayerManager.player_money >= case.case_price):
			PlayerManager.player_money -= case.case_price
			var new_skin = case.generate_skin()
			print(new_skin.skin_name + " - " + new_skin.skin_rarity)
			PlayerManager.player_skins.append(new_skin)
