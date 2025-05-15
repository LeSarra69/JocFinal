extends Node2D


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://menu inicio.tscn")




func _on_child_entered_tree(node: Node) -> void:
	$"animation player".play("new_animation")
