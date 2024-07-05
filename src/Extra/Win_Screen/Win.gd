extends CanvasLayer

var score = Global.score

func _ready():
	pass

func _on_level_selection_pressed(): #play again that current map
	if MapCharacter.map_selector == 11:
		get_tree().change_scene_to_file("res://src/Levels/Map1/Map1.tscn")
	if MapCharacter.map_selector == 12:
		get_tree().change_scene_to_file("res://src/Levels/Map2/Map2.tscn")
	if MapCharacter.map_selector == 13:
		get_tree().change_scene_to_file("res://src/Levels/Map3/Map3.tscn")
	if MapCharacter.map_selector == 14:
		get_tree().change_scene_to_file("res://src/Levels/Map4/Map4.tscn")
	if MapCharacter.map_selector == 15:
		get_tree().change_scene_to_file("res://src/Levels/Map5/Map5.tscn")
	if MapCharacter.map_selector == 16:
		get_tree().change_scene_to_file("res://src/Levels/Map6/Map6.tscn")

func _on_level_selector_pressed(): #back to selector
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/Witch_selector_screens.tscn")

func _on_home_pressed(): #back to home
	get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")
