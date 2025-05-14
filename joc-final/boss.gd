extends CharacterBody2D
var conyete = false
var speedx = 10000
var speedy = 100
var s= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	s = true
	$AnimatedSprite2D.play("camina")
	

func _physics_process(delta):
	if s== true:
		velocity.x = - speedx * delta
		velocity.y += gravetat * delta
		#$AnimatedSprite2D.play("default")
	else:
		velocity = Vector2(0,0)
	
	if Globalingo.videsB <= 0:
		s = false
		
	
	if Globalingo.videsB <= 0 and conyete == true:
		s = false
		$AnimatedSprite2D.play("muelte")
		
	move_and_slide()
	
func _on_animated_sprite_2d_animation_finished():
		queue_free()


func _on_area_bales_area_entered(area: Area2D) -> void:
	Globalingo.videsB -=1
	print(Globalingo.videsB)


func _on_area_bales_body_entered(body: Node2D) -> void:
	Globalingo.vides = 0

func _on_area_cabolo_body_entered(body: Node2D) -> void:
	if Globalingo.videsB <= 0:
		conyete = true
		print("lo mataste")
	else:
		pass
