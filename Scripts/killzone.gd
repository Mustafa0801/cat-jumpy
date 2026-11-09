extends Area2D

@onready var timer: Timer = $Timer

@export var enemy_animation: AnimatedSprite2D

# when player enters killzone timer starts
func _on_body_entered(body: Node2D) -> void:
	print("died") 
	if enemy_animation:
		enemy_animation.play("attack")
		await get_tree().create_timer(0.2).timeout
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	GameManager.show_deathscreen()
	timer.start()

# when timer ends the scene is reloaded
func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	GameManager.hide_deathscreen()
	get_tree().reload_current_scene() 
	
	
