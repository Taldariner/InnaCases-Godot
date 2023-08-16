extends Control

var case : WeaponSkinsCase

var skin_ui = preload("res://Scenes and Scripts/SkinUI.tscn")

var speed = 64
var case_stopped = false

var dropped_skins : Array[WeaponSkin] = []

@onready var panel = $Panel
@onready var case_container = $"Case Scroll Container"
@onready var item_container = $"Case Scroll Container/Item Container"
@onready var item_cursor = $"Item Cursor"

func start_case_opening():
	case_container.get_h_scroll_bar().scale.x = 0
	for i in range(0, 100):
		var next_skin = case.generate_skin()
		dropped_skins.append(next_skin)
		add_skin(next_skin)

func add_skin(new_skin : WeaponSkin):
	var new_skin_ui = skin_ui.instantiate()
	new_skin_ui.update(new_skin)
	
	#texture_rects.append(img)
	#texture_rects.append(new_skin.skin_texture)
	item_container.add_child(new_skin_ui)

func _process(delta):
	if not case_stopped:
		#increase_value += 1 * speed
		case_container.scroll_horizontal += 1 * speed

func _on_timer_timeout():
	if speed > 0 and not case_stopped:
		speed -= 0.5
	elif speed <= 0:
		case_stopped = true
		
		#print(index_number)
		#print(item_container.global_position.x)
		#print(item_cursor.global_position.x)
		var needed_skin = (item_cursor.global_position.x - item_container.global_position.x)/370
		
		$Panel/SkinUI.update(dropped_skins[needed_skin])
		
		#for skin in dropped_skins:
		#	print(skin.skin_name)
		
		PlayerManager.global_player_data.player_skins.append(dropped_skins[needed_skin])
		PlayerManager.save_player_data()
		$Timer.stop()
		panel.show()

func _on_button_pressed():
	queue_free()
