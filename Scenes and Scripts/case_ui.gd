extends Control

var case : WeaponSkinsCase

func update(case : WeaponSkinsCase):
	$CaseName.text = case.case_name
	$CasePrice.text = str(case.case_price)
	$SkinTexture.texture = case.case_texture

func _on_gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if(PlayerManager.global_player_data.player_money >= case.case_price):
			PlayerManager.global_player_data.player_money -= case.case_price
			var new_skin = case.generate_skin()
			print(new_skin.skin_name + " - " + new_skin.skin_rarity)
			PlayerManager.global_player_data.player_skins.append(new_skin)
			PlayerManager.save_player_data()
