extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = %GameManager

# when player enters killzone timer starts
func _on_body_entered(body: Node2D) -> void:
	print("died") 
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	game_manager.show_deathscreen()
	timer.start()

# when timer ends the scene is reloaded
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene() 
	
	
