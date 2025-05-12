extends Sprite2D


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("fdavant"):
		bala.flip_h = false
	if Input.is_action_pressed("fesquerra"):
		bala.flip_h = true
