extends Control

var case : WeaponSkinsCase
var skin_ui = preload("res://Scenes and Scripts/SkinUI.tscn")

var increase_value = 0
var index_number = 2
var high_limit = 270
var speed = 40
var case_stopped = false

var texture_rects = []
var dropped_skins : Array[WeaponSkin] = []

@onready var panel = $Panel
@onready var case_container = $"Case Scroll Container"
@onready var item_container = $"Case Scroll Container/Item Container"

func start_case_opening():
	case_container.get_h_scroll_bar().scale.x = 0
	for i in range(0, 100):
		var next_skin = case.generate_skin()
		dropped_skins.append(next_skin)
		add_skin(next_skin)
	
		
func add_skin(new_skin : WeaponSkin):
	var new_skin_ui = skin_ui.instantiate()
	new_skin_ui.update(new_skin.skin_name, new_skin.skin_texture)
	
	#texture_rects.append(img)
	texture_rects.append(new_skin.skin_texture)
	item_container.add_child(new_skin_ui)

func _process(delta):
	if not case_stopped:
		increase_value += 1 * speed
		case_container.scroll_horizontal = increase_value
		if case_container.scroll_horizontal > high_limit:
			index_number += 1
			high_limit += 260
			
func _on_timer_timeout():
	if speed > 0 and not case_stopped:
		speed -= 0.5
	elif speed <= 0:
		case_stopped = true
		panel.get_node("TextureRect").texture = texture_rects[index_number]
		PlayerManager.global_player_data.player_skins.append(dropped_skins[index_number])
		$Timer.stop()
		panel.show()

func _on_button_pressed():
	queue_free()
