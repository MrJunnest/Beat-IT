extends Area2D

# Posiciones de teletransporte
@export var going_up = Vector2(70,374 )
@export var going_down = Vector2(70, 501)
@export var START = Vector2i(70,501)



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

func _on_area_entered(area): #game over scene
	get_tree().change_scene_to_file("res://src/Extra/End_Scream/End_scrren.tscn")
