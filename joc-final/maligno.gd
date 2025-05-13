extends CharacterBody2D

var speedx = 10000
var speedy = 100
var m= false
var gravetat = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	m = true
	

func _physics_process(delta):
	if m== true:
		velocity.x = - speedx * delta
		velocity.y += gravetat * delta
	else:
		velocity = Vector2(0,0)

	
	move_and_slide()

	if Globalingo.m1 == true:
		Globalingo.videsM -=1
		Globalingo.m1 = false
		print(Globalingo.videsM)
