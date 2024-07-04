extends Control

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Characters_Selector/characters_selector.tscn")

func _on_play_button_mouse_entered():
	$Hitsound.play()

func _on_settings_button_mouse_entered():
	$Hitsound.play()

func _on_quit_button_mouse_entered():
	$Hitsound.play()

func _on_quit_button_pressed():
	get_tree().quit()
