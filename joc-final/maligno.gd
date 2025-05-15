extends CharacterBody2D

var speedx = 10000
var speedy = 100
var m= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	m = true
	$AnimatedSprite2D.scale.x *=-1
	$AnimatedSprite2D.play("default")
	

func _physics_process(delta):
	if m== true:
		velocity.x = - speedx * delta
		velocity.y += gravetat * delta
		$AnimatedSprite2D.play("default")
	else:
		velocity = Vector2(0,0)
	
	if Globalingo.videsM == 0:
		m = false
		$AnimatedSprite2D.play("death")
		
	
	move_and_slide()

func _on_area_2d_area_entered(area: Area2D) -> void:
	Globalingo.videsM -=1

	

func _on_area_2d_body_entered(body: Node2D) -> void:
	Globalingo.vides = 0


func _on_animated_sprite_2d_animation_finished():
		queue_free()
		get_tree().change_scene_to_file("res://sorollesqueleto.tscn")
