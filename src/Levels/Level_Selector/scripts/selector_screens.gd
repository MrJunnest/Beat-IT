extends Control


func _on_map_1_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map1/Map1.tscn")

func _on_map_2_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map2/Map2.tscn")

func _on_map_3_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map3/Map3.tscn")

func _on_map_4_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map4/Map4.tscn")

func _on_map_5_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map5/map_5.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Characters_Selector/characters_selector.tscn")

func _on_map_1_mouse_entered():
	$Hitsound.play()
	
func _on_map_2_mouse_entered():
	$Hitsound.play()

func _on_map_3_mouse_entered():
	$Hitsound.play()
	
func _on_map_4_mouse_entered():
	$Hitsound.play()
	
func _on_map_5_mouse_entered():
	$Hitsound.play()
	
func _on_back_mouse_entered():
	$Hitsound.play()
