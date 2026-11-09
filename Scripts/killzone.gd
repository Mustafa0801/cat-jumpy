extends Area2D

@onready var timer: Timer = $Timer


# when player enters killzone timer starts
func _on_body_entered(body: Node2D) -> void:
	print("died") 
	timer.start()
	

# when timer ends the scene is reloaded
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene() 
	
