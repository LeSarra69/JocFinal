extends CollisionShape2D


func _on_area_2d_area_entered(area: Area2D) -> void:
	Globalingo.mort_insta = true
