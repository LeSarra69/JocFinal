extends CharacterBody2D


var velotzitat = Vector2(20,0)

func _physics_process(delta):
	translate(velotzitat)
	if Input.is_action_just_pressed("fdavant"):
		velotzitat = velotzitat
	elif Input.is_action_just_pressed("fesquerra"):
		velotzitat = -velotzitat
