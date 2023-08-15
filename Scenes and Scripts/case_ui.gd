extends Control

var case : WeaponSkinsCase
var case_opening_scene = preload("res://Scenes and Scripts/case_opening.tscn")

func update(case : WeaponSkinsCase):
	$CaseName.text = case.case_name
	$CasePrice.text = str(case.case_price)
	$SkinTexture.texture = case.case_texture

func _on_gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if(PlayerManager.global_player_data.player_money >= case.case_price):
			PlayerManager.global_player_data.player_money -= case.case_price
			#var new_skin = case.generate_skin()
			#print(new_skin.skin_name + " - " + new_skin.skin_rarity)
			
			var new_case_opening = case_opening_scene.instantiate()
			new_case_opening.case = case
			get_tree().get_root().add_child(new_case_opening)
			new_case_opening.start_case_opening()
			
			#PlayerManager.global_player_data.player_skins.append(new_skin)
			#PlayerManager.save_player_data()
