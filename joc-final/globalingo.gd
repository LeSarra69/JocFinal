extends Node

var penis = false
var vides = 3



func _ready() -> void:
	penis = false

func _morir():
	if vides == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
