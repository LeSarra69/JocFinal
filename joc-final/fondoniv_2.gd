extends Node2D
func _ready() -> void:
	if Globalingo.vides == 2:
		get_tree().change_scene_to_file("res://fondoniv2.tscn")
