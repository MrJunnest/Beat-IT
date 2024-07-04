class_name settings
extends Control


@onready var button = $MarginContainer/VBoxContainer/Back_but as Button
 

signal exit_settings

# Called when the node enters the scene tree for the first time.
func _ready():
	button.button_down.connect(on_exit_pressed)
	set_process(false)
	
func on_exit_pressed() -> void:
	#print("EXIT DAMMIT") #debug line incase some twat code line decide it doesn't want to work
	emit_signal("exit_settings")
	set_process(false)

func _on_volume_value_changed(value): #volume slider, change value change volume
	AudioServer.set_bus_volume_db(0, value)

func _on_resolution_b_item_selected(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1920,1080))
		1:
			DisplayServer.window_set_size(Vector2i(1280,720))
