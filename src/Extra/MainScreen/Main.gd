extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

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












