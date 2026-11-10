extends Area2D

@export var player: CharacterBody2D

@export var boost_speed: int = -400

# decreasing gravity so that cat jumps higher
func _on_body_entered(_body: Node2D) -> void:
	print("boost")
	player.change_jump(boost_speed)

# change back to normal
func _on_body_exited(_body: Node2D) -> void:
	print("left")
	player.change_jump(-300) # DEFAULT IS -300
