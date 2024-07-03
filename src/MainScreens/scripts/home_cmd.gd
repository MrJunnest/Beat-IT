extends Control

func _ready():
	$Title.play("default")

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Characters_Selector/characters_selector.tscn")
	#get_tree().change_scene_to_file("")

	
func _on_play_button_mouse_entered():
	$Hitsound.play()

func _on_settings_button_mouse_entered():
	$Hitsound.play()



func _on_quit_button_mouse_entered():
	$Hitsound.play()
	
func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.
