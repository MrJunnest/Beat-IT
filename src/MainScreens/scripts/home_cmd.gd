extends Control

func _ready():
	$Title.play("default")

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")
	#get_tree().change_scene_to_file("")
	pass # Replace with function body.
	
func _on_play_button_mouse_entered():
	$Hitsound.play()

func _on_settings_button_mouse_entered():
	$Hitsound.play()



func _on_quit_button_mouse_entered():
	$Hitsound.play()
	
func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
