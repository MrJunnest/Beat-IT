extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_test_1_level_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Tests/TestLevel/Test1/Test1.tscn")
	pass # Replace with function body.
