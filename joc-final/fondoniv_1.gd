extends Node2D



func _on_area_2d_5_body_entered(body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://game over.tscn")


func _on_area_2d_6_body_entered(body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://fondoniv2.tscn")
