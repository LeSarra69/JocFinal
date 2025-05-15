extends CharacterBody2D
var conyete = 1
var speedx = 2000
var speedy = 100
var s= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")



func _ready():
	s = true
	conyete =1
	$AnimatedSprite2D.play("camina")
	

func _physics_process(delta):
	if s== true:
		velocity.x = - speedx * delta
		velocity.y += gravetat * delta
		#$AnimatedSprite2D.play("default")
	else:
		velocity = Vector2(0,0)
	
	if Globalingo.videsB <= 0 and conyete==1:
		s = false
		conyete =2
		$AnimatedSprite2D.play("stunned")
	
	if conyete == 3:
		print("lo mataste")
		$AnimatedSprite2D.play("muelte")
	
	move_and_slide()
	
func _on_animated_sprite_2d_animation_finished():
		queue_free()


func _on_area_bales_area_entered(area: Area2D) -> void:
	Globalingo.videsB -=1
	print(Globalingo.videsB)


func _on_area_bales_body_entered(body: CharacterBody2D) -> void:
	Globalingo.vides = 0

func _on_area_cabolo_body_entered(body: CharacterBody2D) -> void:
	if conyete == 2:
		$area_bales.queue_free()
		conyete = 3
	else:
		pass
