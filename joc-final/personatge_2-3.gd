extends CharacterBody2D
const velocitat:= 170
const vsalt = -300

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





func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	get_tree().change_scene_to_file("res://game over.tscn")


func _on_timer_bar_time_to_die() -> void:
	get_tree().change_scene_to_file("res://game over.tscn")


func _on_area_impacte_area_entered(area: Area2D) -> void:
	Globalingo.vides2 -=1
	if Globalingo.vides2 == 2:
			$CanvasLayer/HBoxContainer/TextureRect2/cor.play("buit")
			$CanvasLayer/HBoxContainer/TextureRect2/cor.play("buit")
	elif Globalingo.vides2 == 1:
			$CanvasLayer/HBoxContainer/TextureRect3/cor.play("elimin")
			$CanvasLayer/HBoxContainer/TextureRect3/cor.play("buit")
	elif Globalingo.vides2 == 0:
			$CanvasLayer/HBoxContainer/TextureRect/cor.play("elimin")
			$CanvasLayer/HBoxContainer/TextureRect/cor.play("buit")
