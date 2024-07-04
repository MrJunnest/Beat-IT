# CharacterSelector.gd
extends Control

func _on_little_witch_pressed():
	Global.selected_character = "Witch"
	print("Selected character: Witch")
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")

func _on_little_elvis_pressed():
	Global.selected_character = "Elvis"
	print("Selected character: Elvis")
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")

func _on_elementals_water_priestess_pressed():
	Global.selected_character = "WaterPriestess"
	print("Selected character: Water Priestess")
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")

