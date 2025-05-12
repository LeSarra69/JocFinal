extends CharacterBody2D

var bullet = preload("res://areabala.tscn")

func _physics_process(delta):
	if Input.is_action_just_pressed("fbala"):
		shoot()
		
func shoot():
	var newbala = bullet.instantiate()
	newbala.global_position = $spownpoint.global_position
	get_parent().add_child(newbala)
