extends Line2D

signal time_to_die;

func _decrease():
	points[1].x -= 10;
func _is_time_to_die():
	return points[1].x == 0;

func _on_timer_timeout() -> void:
	_decrease();

	if _is_time_to_die(): 
		emit_signal("time_to_die"); 
