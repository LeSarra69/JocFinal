extends Area2D

var vbala = 800

func _process(delta):
	position.x += vbala * delta



func _on_body_entered(body: Node2D) -> void:
	queue_free()


func _on_timer_timeout() -> void:
	queue_free()
