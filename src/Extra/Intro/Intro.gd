extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("fade in")
	#wait_time()
	$AnimationPlayer.play("fade out")
	wait_time(1)
	#get_tree().change_scene_to_file("res://src/MainScreens/home-screen.tscn")
	
func wait_time(time):
	await get_tree().create_timer(time).timeout
