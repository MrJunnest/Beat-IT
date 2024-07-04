extends Control

func _ready():
	$Witch.play("Idle")
	$Priestess.play("Idle")
	$Elvis.play("Idle")
	pass

func _on_little_witch_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")
	Global.character_visible = 1

func _on_little_elvis_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")
	Global.character_visible = 2

func _on_elementals_water_priestess_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")
	Global.character_visible = 3

func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/MainScreens/home-screen.tscn")

func _on_little_witch_mouse_entered():
	$Hitsound.play()

func _on_little_elvis_mouse_entered():
	$Hitsound.play()

func _on_elementals_water_priestess_mouse_entered():
	$Hitsound.play()

func _on_back_mouse_exited():
	$Hitsound.play()
