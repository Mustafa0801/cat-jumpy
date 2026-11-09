extends Node

var score : int = 0
@onready var points_label: Label = $score

@onready var canvas: CanvasLayer = $CanvasLayer

func add_point() -> void: 
	score += 1
	points_label.text = "You collected " + str(score) + "/11 coins!"

func show_deathscreen() -> void:
	canvas.visible = true
