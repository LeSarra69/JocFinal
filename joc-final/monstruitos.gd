extends CharacterBody2D

var speedx = 10000
var speedy = 100
var m= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	m = true
	

func _physics_process(delta):
	if m== true:
		$AnimatedSprite2D.play("default")
		velocity.x = - speedx * delta
		velocity.y += gravetat * delta
	else:
		velocity = Vector2(0,0)

	move_and_slide()
	



func _on_saltalcap_body_entered(body: Node2D) -> void:
	m = false
	$saltalcap.queue_free()
	$areamonstre.queue_free()
	$AnimatedSprite2D.play("death")


func _on_animated_sprite_2d_animation_finished():
	queue_free()
