extends Control

func _ready():
	pass # Replace with function body.

#PLAY BUTTON
func _on_play_pressed():
	pass # Replace with function body.
func _on_play_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.

#SETTINGS BUTTON
func _on_settings_pressed():
	pass # Replace with function body.
func _on_settings_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.



#CREDITS BUTTON
func _on_credits_pressed():
	pass # Replace with function body.
func _on_credits_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.



#QUIT BUTTON
func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
func _on_quit_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.
