extends CharacterBody2D

# Posiciones de teletransporte
@export var going_up = Vector2(55, 405)
@export var going_down = Vector2(55,500)
@export var START = Vector2i(55,500)

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
