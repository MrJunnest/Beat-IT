extends Area2D

# Posiciones de teletransporte
@export var going_up = Vector2(65, 95)
@export var going_down = Vector2(65, 240)
@export var START = Vector2i(65,240)



func _ready():
	global_position = START
	$Body.play("Run")

func _input(event):
	if event.is_action_pressed("UP"):
		global_position = going_up
		$Body.play("Jump")
	elif event.is_action_pressed("DOWN"):
		global_position = going_down
		$Body.play("Run")



func _on_area_entered(area):
	get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")
