extends Control

func _on_play_button_pressed():
	Trans1.change_scene("res://src/Levels/Level_Selector/selector_screens.tscn")
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
