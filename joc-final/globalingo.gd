extends Node

var penis = false
var pers2 = false
var m1 = false
var vides = 3
var videsM = 5
var videsB = 10



func _ready() -> void:
	penis = false
	vides = 3
	videsM = 5
	videsB = 10
func _physics_process(delta: float) -> void:
	if vides == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
		vides = 3
		videsM = 5
		videsB = 10
		
