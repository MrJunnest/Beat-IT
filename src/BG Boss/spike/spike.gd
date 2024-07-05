extends Area2D

const TARGET_X = 200  # Objetivo en el eje X (a la izquierda)
const SPAWN_X = 1200    # Posición de spawn en el eje X (a la derecha)
const DIST_TO_TARGET = SPAWN_X - TARGET_X  # Distancia entre spawn y objetivo en X

const DOWN_LANE_SPAWN = Vector2(SPAWN_X, 560) #ABAJO

var speed = 0
var hit = false

func _ready():
	pass

func _process(delta):
	$AnimatedSprite2D.play("default")
	$AnimatedSprite2D.flip_h = true  # Asegúrate de que no esté volteado horizontalmente

func _physics_process(delta):
	if !hit:
		position.x -= speed * delta  # Mover hacia la izquierda
		if position.x < -400:  # Condición de terminación ajustada según el eje X
			queue_free()
			get_parent().reset_combo()
	else:
		$Node2D.position.x -= speed * delta  # Mover hacia la izquierda cuando es golpeado

func initialize(lane):
	if lane == 1:
		$AnimatedSprite2D.play("new_animation")
		position = DOWN_LANE_SPAWN
	else:
		printerr("Invalid lane set for note: " + str(lane))
		return
	speed = DIST_TO_TARGET / 5
	
func _on_Timer_timeout():
	queue_free()
