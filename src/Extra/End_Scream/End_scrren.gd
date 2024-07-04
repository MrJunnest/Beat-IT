extends CanvasLayer

func _on_level_selection_pressed():
	if MapCharacter.map_selector == 11:
		get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Witch_selector_screens.tscn")
	if MapCharacter.map_selector == 12:
		get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Elvis_selector_screens.tscn")
	if MapCharacter.map_selector == 13:
		get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Witch_selector_screens.tscn")

func _on_play_again_pressed():
	if MapCharacter.character_visible == 1:
		get_tree().change_scene_to_file("res://src/Levels/Map1/Map1.tscn")
