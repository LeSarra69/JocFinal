extends Control


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Nivell1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Nivell1.tscn")


func _on_button_22_pressed() -> void:
	get_tree().change_scene_to_file("res://Tutorial.tscn")


func _on_button_3_pressed() -> void:
	get_tree().quit()
