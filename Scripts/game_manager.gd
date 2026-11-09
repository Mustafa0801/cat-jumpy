extends Node

var score : int = 0

@onready var canvas_layer: CanvasLayer = $CanvasLayer

@onready var points_label: Label = $score

@onready var death_sound: AudioStreamPlayer2D = $"death sound"

func add_point() -> void: 
	score += 1
	points_label.text = "You collected " + str(score) + "/11 coins!"

func show_deathscreen() -> void:
	canvas_layer.visible = true
	death_sound.play()

func hide_deathscreen() -> void:
	canvas_layer.visible = false
	
