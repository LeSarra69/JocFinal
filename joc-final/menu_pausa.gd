extends Control
func _ready() -> void:
	$AnimationPlayer.play("RESET")

func resume():
	$AnimationPlayer.play_backwards("blur")
	get_tree().paused = false
	
	
	
func pause():
	$AnimationPlayer.play("blur")
	get_tree().paused = true
	

func testEsc():
	if Input.is_action_just_pressed("escape") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused:
		resume()

func _on_seguir_pressed() -> void:
	resume()


func _on_tornar_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://menu inicio.tscn")


func _on_sortir_pressed() -> void:
	get_tree().quit()
	
func _process(delta: float) -> void:
	testEsc()
