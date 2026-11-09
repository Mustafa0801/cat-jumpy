extends Area2D


# removes coin when player touches it
func _on_body_entered(body: Node2D) -> void:
	print("+1 coins!")
	queue_free() 
