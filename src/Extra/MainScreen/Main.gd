class_name Main_menu
extends Control

@onready var Title2 = $Label
@onready var VBOX = $"Left ButtonBox" as VBoxContainer
@onready var Title = $Title as AnimatedSprite2D
@onready var Play_button = $"Left ButtonBox/PLAY" as Button
@onready var Settings_button = $"Left ButtonBox/SETTINGS" as Button
@onready var Quit_button = $"Left ButtonBox/QUIT" as Button
@onready var setting_menu = $Settings_menu
@onready var colorbox = $"Left ColorBox" 

var rotation_direction = 0


func _ready():
	Title.play("default")
	handle_signal()
	set_process(true)

func _process(delta): #usefull if need continous shit, but proven useless so far in settings obv, tsk tsk tsk
	pass

#PLAY BUTTON
func _on_play_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Characters_Selector/characters_selector.tscn")



func _on_play_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.

#SETTINGS BUTTON

	
func _on_settings_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.



#CREDITS BUTTON
func _on_credits_pressed():
	get_tree().change_scene_to_file("res://src/MainScreens/settings/credits.tscn")

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
	
func _on_settings_pressed():
	setting_menu.set_process(true)
	VBOX.visible = false
	Title.visible = false
	setting_menu.visible = true
	colorbox.visible = false
	Title2.visible = false
	
func _on_exit_settings() : #exit setting button pressed, revert to main menu
	VBOX.visible = true
	setting_menu.visible = false
	Title.visible = true 
	colorbox.visible = true
	Title2.visible = true

func handle_signal(): #a place for lost signals...(it's a meme mf, just a place to tidy up the signals)
	setting_menu.exit_settings.connect(_on_exit_settings) #exit button from settings scene
