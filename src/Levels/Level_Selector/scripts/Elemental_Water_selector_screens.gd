extends Control

func _ready():
	hide_all_backgrounds()
	
func hide_all_backgrounds():
	$Map1_Background.visible = false
	$Map2_Background.visible = false
	$Map3_Background.visible = false
	$Map4_Background.visible = false
	$Map5_Background.visible = false
	$Map6_Background.visible = false

func show_background(background):
	hide_all_backgrounds()
	background.visible = true
	$Sprite.visible = false
	$Hitsound.play()

func reset_background():
	hide_all_backgrounds()
	$Sprite.visible = true

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

func _on_map_6_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Map6/Map_6.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Characters_Selector/characters_selector.tscn")

func _on_map_1_mouse_entered():
	show_background($Map1_Background)

func _on_map_1_mouse_exited():
	reset_background()

func _on_map_2_mouse_entered():
	show_background($Map2_Background)

func _on_map_2_mouse_exited():
	reset_background()

func _on_map_3_mouse_entered():
	show_background($Map3_Background)

func _on_map_3_mouse_exited():
	reset_background()

func _on_map_4_mouse_entered():
	show_background($Map4_Background)

func _on_map_4_mouse_exited():
	reset_background()

func _on_map_5_mouse_entered():
	show_background($Map5_Background)

func _on_map_5_mouse_exited():
	reset_background()

func _on_map_6_mouse_entered():
	show_background($Map6_Background)

func _on_map_6_mouse_exited():
	reset_background()

func _on_back_mouse_entered():
	$Hitsound.play()
