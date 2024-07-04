extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("fade out")
	await get_tree().create_timer(2).timeout
	$AudioStreamPlayer.play()
	await get_tree().create_timer(1).timeout
	$AnimationPlayer.play("fade in")
	await get_tree().create_timer(3).timeout
	get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")

