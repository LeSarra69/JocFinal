extends CharacterBody2D

const velocitat:= 450
const vsalt = -600
const bala = preload("res://areabala.tscn")
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")
var miradret =true

func _physics_process(delta):

	if Input.is_action_just_pressed("fsalt") and is_on_floor():
		velocity.y = 1.1 * vsalt

	var direccio = Vector2.ZERO
	direccio.x = Input.get_axis("fesquerra", "fdavant")
	
	
	if (Input.is_action_pressed("fdavant") or Input.is_action_pressed("fesquerra")) and is_on_floor():
		$AnimatedSprite2D.play("animaico_moviment")
	elif is_on_floor() == false:
		$AnimatedSprite2D.play("animacio_roda")
	else: 
		$AnimatedSprite2D.play("quiet")
	if Input.is_action_pressed("fdavant"):
		$AnimatedSprite2D.flip_h = false
		miradret = true
	if Input.is_action_pressed("fesquerra"):
		$AnimatedSprite2D.flip_h = true
		miradret = false
	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	
	#disparar
	var shoot = bala.instantiate()
	if Input.is_action_just_pressed("fbala"):
		get_parent().add_child(shoot)
		if miradret:
			shoot.position = $spownpoint1.global_position
		if not miradret:
			shoot.position = $spownpoint2.global_position
			shoot.scale.x *=-1
			shoot.vbala *=-1
			

	move_and_slide()


func _on_areaimpacte_2_area_entered(area: Area2D) -> void:
	Globalingo.vides -= 1
	if Globalingo.vides == 2:
			$CanvasLayer/HBoxContainer/TextureRect2/cor.play("elimin")
			$CanvasLayer/HBoxContainer/TextureRect2/cor.play("buit")
	elif Globalingo.vides == 1:
			$CanvasLayer/HBoxContainer/TextureRect3/cor.play("elimin")
			$CanvasLayer/HBoxContainer/TextureRect3/cor.play("buit")
	elif Globalingo.vides == 0:
			$CanvasLayer/HBoxContainer/TextureRect/cor.play("elimin")
			$CanvasLayer/HBoxContainer/TextureRect/cor.play("buit")
