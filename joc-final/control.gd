extends Control
@onready var barratemps = $barratemps

func _ready() -> void:
	var timer = Timer.new()
	timer.wait.time = 1.0
	timer.autostart = true 
	timer.one_shot = false
	add_child(timer)
	timer.connect("timeout" , Callable(self,"_on_timer_timeout"))
	
	
	
	
func _on_timer_timeout():
	barratemps.value -= 10
	if barratemps.value <= 0:
		get_tree().change_scene_to_file("res://game over.tscn")
