extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://game over.tscn")

func _ready() -> void:
	$AudioStreamPlayer.play()
	$AnimatedSprite2D.play("default")
	Globalingo.vides = 3
	Globalingo.vides2 = 3
