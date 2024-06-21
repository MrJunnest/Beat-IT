extends CanvasLayer

func _physics_process(delta):
	if Input.is_action_just_pressed("Pause"): #Reciving P Input pause
		get_tree().paused =  not get_tree().paused #ScreenPaused
		$ColorRect.visible =  not $ColorRect.visible #Scren Jump
		print("Paused:", get_tree().paused)

