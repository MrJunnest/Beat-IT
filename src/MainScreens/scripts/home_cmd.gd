extends Control

#initialize 
@onready var VBOX = $"VBox-Main" as VBoxContainer
@onready var Title = $"VBox-Main/Title" as AnimatedSprite2D
@onready var Play_button = $"VBox-Main/Play-Button" as Button
@onready var Settings_button = $"VBox-Main/Settings-Button" as Button
@onready var Quit_button = $"VBox-Main/Quit-Button" as Button
@onready var setting_menu = $Settings_menu

func _ready():
	Title.play("default")
	handle_signal()
	
func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://src/Levels/Level_Selector/selector_screens.tscn")
	#get_tree().change_scene_to_file("")
	pass # Replace with function body.
	
func _on_play_button_mouse_entered():
	$Hitsound.play()

func _on_settings_button_mouse_entered():
	$Hitsound.play()

func _on_quit_button_mouse_entered():
	$Hitsound.play()
	
	
func _on_settings_button_pressed(): # setting button visibility
	setting_menu.set_process(true)
	VBOX.visible = false
	Title.visible = false
	setting_menu.visible = true
	
func _on_exit_settings() : #exit setting button pressed, revert to main menu
	VBOX.visible = true
	setting_menu.visible = false
	Title.visible = true 

func _on_quit_button_pressed():
	get_tree().quit()
	pass # Replace with function body.

func handle_signal(): #a place for lost signals...(it's a meme mf, just a place to tidy up the signals)
	setting_menu.exit_settings.connect(_on_exit_settings) #exit button from settings scene
