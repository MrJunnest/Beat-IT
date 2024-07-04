extends Node

# Declarar una variable para el ColorRect
@onready var color_rect = $ColorRect
@onready var label = $Label
@onready var setting_menu = $Settings_menu

func _ready():
	# Asegurarse de que el ColorRect esté oculto inicialmente
	color_rect.visible = false
	label.visible = false
	
	setting_menu.exit_settings.connect(_on_exit_settings)

func _input(event):
	
	if event.is_action_pressed("Pause"):
		# Alternar el estado de pausa
		get_tree().paused = not get_tree().paused
		
		# Alternar la visibilidad del ColorRect
		color_rect.visible = get_tree().paused
		label.visible = get_tree().paused
		


func _on_menu_pressed() -> void:
	# Alternar el estado de pausa
	get_tree().paused = not get_tree().paused
		
	# Alternar la visibilidad del ColorRect
	color_rect.visible = get_tree().paused
	label.visible = get_tree().paused



func _on_settings_pressed():
	setting_menu.set_process(true)
	setting_menu.visible = true
	$Label.visible = false
	$ColorRect/BoxContainer.visible = false
	$ColorRect.visible = false
	
func _on_exit_settings() : #exit setting button pressed, revert to main menu
	setting_menu.visible = false
	$Label.visible = true
	$ColorRect/BoxContainer.visible = true
	$ColorRect.visible = true


func _on_return_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")
	
