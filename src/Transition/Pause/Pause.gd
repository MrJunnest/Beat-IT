extends Node

# Declarar una variable para el ColorRect
@onready var color_rect = $ColorRect
@onready var label = $Label

func _ready():
	# Asegurarse de que el ColorRect esté oculto inicialmente
	color_rect.visible = false
	label.visible = false

func _input(event):
	if event.is_action_pressed("Pause"):
		# Alternar el estado de pausa
		get_tree().paused = not get_tree().paused
		
		# Alternar la visibilidad del ColorRect
		color_rect.visible = get_tree().paused
		label.visible = get_tree().paused
