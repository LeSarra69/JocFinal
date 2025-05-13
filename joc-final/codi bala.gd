extends Area2D

var vbala = 800

func _process(delta):
	position.x += vbala * delta


func _on_body_entered(body: CharacterBody2D) -> void:
	Globalingo.penis = true 
	Globalingo.m = true
	queue_free()
