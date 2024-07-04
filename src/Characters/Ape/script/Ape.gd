extends CharacterBody2D

# Posiciones de teletransporte
@export var going_up = Vector2(70, 95)
@export var going_down = Vector2(70, 240)
@export var START = Vector2i(70,240)

func _ready():
	global_position = START
	$Body.play("Run")

func _input(event):
	if event.is_action_pressed("ui_right"):
		global_position = going_up
		$Body.play("Jump")
	elif event.is_action_pressed("ui_left"):
		global_position = going_down
		$Body.play("Run")
