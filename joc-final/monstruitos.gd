extends CharacterBody2D

var speedx = 10000
var speedy = 100
var m= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if Input.is_anything_pressed():
		m = true
	if m== true:
		$collisionterra/AnimatedSprite2D.play("default")
		velocity.x = speedx * delta
		velocity.y += gravetat * delta
	move_and_slide()


func _on_areabala_body_entered(body: CharacterBody2D) -> void:
	print("mort")
	$".".queue_free()
	
