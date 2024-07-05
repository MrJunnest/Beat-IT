extends Control

func _ready():
	$Witch.play("Idle")
	$Priestess.play("Idle")
	$Elvis.play("Idle")
	pass

func _on_little_witch_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Witch_selector_screens.tscn")
	MapCharacter.character_visible = 1

func _on_little_elvis_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Elvis_selector_screens.tscn")
	MapCharacter.character_visible = 2

func _on_elementals_water_priestess_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Elemental_Water_selector_screens.tscn")
	MapCharacter.character_visible = 3

func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")

func _on_little_witch_mouse_entered():
	$Hitsound.play()

func _on_little_elvis_mouse_entered():
	$Hitsound.play()

func _on_elementals_water_priestess_mouse_entered():
	$Hitsound.play()

func _on_back_mouse_entered() -> void:
	$Hitsound.play()
