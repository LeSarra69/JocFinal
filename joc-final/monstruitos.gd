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

	if Globalingo.m1 == true:
		Globalingo.videsM -=1
		print(Globalingo.videsM)
		Globalingo.m1 = false
		
	if Globalingo.videsM == 0:
		m = false
		$saltalcap.queue_free()
		$areamonstre.queue_free()
		$AnimatedSprite2D.play("death")
	
	
func _on_areamonstre_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://game over.tscn")


func _on_saltalcap_body_entered(body: Node2D) -> void:
	m = false
	$saltalcap.queue_free()
	$areamonstre.queue_free()
	$AnimatedSprite2D.play("death")


func _on_animated_sprite_2d_animation_finished():
	queue_free()
