# MapSelector.gd
extends Control

func _on_test_1_level_pressed():
	Global.selected_map = "res://src/Levels/Map1/Map1.tscn"
	print("Selected map: Map1")
	start_game()

func _on_test_2_level_pressed():
	Global.selected_map = "res://src/Levels/Map4/Map4.tscn"
	print("Selected map: Map4")
	start_game()

func start_game():
	if Global.selected_character != "" and Global.selected_map != "":
		get_tree().change_scene_to_file(Global.selected_map)
		var player
		# 配置玩家角色
		if Global.selected_character == "Witch":
			player = load("res://path/to/Witch.tscn").instance()
		elif Global.selected_character == "Elvis":
			player = load("res://path/to/Elvis.tscn").instance()
		elif Global.selected_character == "WaterPriestess":
			player = load("res://path/to/WaterPriestess.tscn").instance()
		# 将角色添加到新场景中
		get_tree().current_scene.add_child(player)
	else:
		print("Character or map not selected!")
