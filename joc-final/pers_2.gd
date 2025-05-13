extends CharacterBody2D
const velocitat:= 500
const vsalt = -500

var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	if Input.is_action_just_pressed("salt") and is_on_floor():
		velocity.y = vsalt

	var direccio = Vector2.ZERO
	direccio.x = Input.get_axis("esquerra", "dreta")
	
	
	if (Input.is_action_pressed("dreta") or Input.is_action_pressed("esquerra")) and is_on_floor():
		$AnimatedSprite2D.play("default")
	elif is_on_floor() == false:
		$AnimatedSprite2D.play("salt2")
	else: 
		$AnimatedSprite2D.play("nquiet")
	if Input.is_action_pressed("dreta"):
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("esquerra"):
		$AnimatedSprite2D.flip_h = true
	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	
	move_and_slide()

	if Globalingo.penis == true and Globalingo.m == true:
		Globalingo.vides -=1
		Globalingo.m = false
		print(Globalingo.vides)


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	get_tree().change_scene_to_file("res://game over.tscn")


func _on_timer_bar_time_to_die() -> void:
	get_tree().change_scene_to_file("res://game over.tscn")
