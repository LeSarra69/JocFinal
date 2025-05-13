extends Node

var penis = false
var m = false
var vides = 3



func _ready() -> void:
	penis = false
func _physics_process(delta: float) -> void:
	if vides == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
