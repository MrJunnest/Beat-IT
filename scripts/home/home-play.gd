extends Control

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/test-scenes/test-button.tscn")
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
