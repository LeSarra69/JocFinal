extends Node

var penis = false
var pers2 = false
var m1 = false
var vides = 3
var vides2 = 3
var videsM = 5
var videsB = 40
var mort_insta = false


func _ready() -> void:
	penis = false
	vides = 3
	vides2 = 3
	videsM = 5
	videsB = 40
	mort_insta = false
func _physics_process(delta: float) -> void:
	if vides == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
	elif vides2 == 0:
		get_tree().change_scene_to_file("res://game over.tscn")
		vides = 3
		vides2 = 3
		videsM = 5
		videsB = 40
	elif mort_insta == true:
		get_tree().change_scene_to_file("res://game over.tscn")
		
