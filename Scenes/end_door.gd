extends Area2D

func _on_body_entered(body: Node2D) -> void:
	GameManager.winscreen()
	body.set_deferred("script", false)
