extends Resource

class_name WeaponSkinsCase

var skin_drop_chanses = [[1, 16],
						[17, 32],
						[33, 48],
						[49, 64],
						[65, 80],
						
						[81, 88],
						[89, 96],
						[97, 104],
						[105, 112],
						
						[113, 116],
						[117, 120],
						[121, 124],
						
						[125, 126],
						[127, 128],
						
						[129, 129]]

var rng = RandomNumberGenerator.new()

@export var case_name : String
@export var case_price : int
@export var case_texture : Texture2D
@export var skins : Array[WeaponSkin]

func generate_skin() -> WeaponSkin:
	rng.randomize()
	var skin_number = rng.randi_range(1, 129)
	for skin_range in skin_drop_chanses:
		if skin_number >= skin_range[0] and skin_number <= skin_range[1]:
			return skins[skin_drop_chanses.find(skin_range)]
	return null
	
