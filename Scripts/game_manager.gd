extends Node

var score : int = 0

@onready var canvas_layer: CanvasLayer = $"Death Screen"
@onready var win_screen: CanvasLayer = $"Win Screen"

@onready var points_label: Label = $"Win Screen/points_label"

@onready var death_sound: AudioStreamPlayer2D = $"death sound"


func add_point() -> void: 
	score += 1
	points_label.text = "You collected " + str(score) + "/14 coins!"

func show_deathscreen() -> void:
	canvas_layer.visible = true
	score = 0
	death_sound.play()

func hide_deathscreen() -> void:
	canvas_layer.visible = false
	

func winscreen() -> void:
	win_screen.visible = true
	if score == 0:
		points_label.text = "You collected 0 coins..."
