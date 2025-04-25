extends CharacterBody2D
const velocitat:= 500
const vsalt = -500

var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):

	if Input.is_action_just_pressed("salt") and is_on_floor():
		velocity.y = vsalt

	var direccio = Vector2.ZERO
	direccio.x = Input.get_axis("esquerra", "dreta")
	
	
	if is_on_floor():
		$AnimatedSprite2D.play("default")
	else: 
		$AnimatedSprite2D.play("salt2")
	if Input.is_action_pressed("dreta"):
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("esquerra"):
		$AnimatedSprite2D.flip_h = true
	velocity.x = direccio.x * velocitat
	velocity.y += gravetat * delta
	
	move_and_slide()
