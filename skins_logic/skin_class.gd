extends Resource

class_name WeaponSkin

@export var skin_name : String
#@export var skin_rarity : String #Do droplist here
@export_enum("Common", "Uncommon", "Rare", "Epic", "Legendary", "Special") var skin_rarity : String
#@export var skin_rarity  = (String, "One")
@export var skin_texture : Texture2D
