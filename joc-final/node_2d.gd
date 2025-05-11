extends CharacterBody2D
const velocitat:= 450
const vsalt = -600

var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	if Input.is_action_just_pressed("fsalt") and is_on_floor():
		velocity.y = vsalt

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
	if Input.is_action_pressed("fesquerra"):
		$AnimatedSprite2D.flip_h = true
	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	
	move_and_slide()
