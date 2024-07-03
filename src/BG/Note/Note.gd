extends Area2D

const TARGET_X = 183  # Objetivo en el eje X (a la izquierda)
const SPAWN_X = 1150    # Posición de spawn en el eje X (a la derecha)
const DIST_TO_TARGET = SPAWN_X - TARGET_X  # Distancia entre spawn y objetivo en X

const UP_LANE_SPAWN = Vector2(SPAWN_X, 365) #ARRIBA
const DOWN_LANE_SPAWN = Vector2(SPAWN_X, 535) #ABAJO

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
	if lane == 0:
		$AnimatedSprite2D.frame = 0
		position = UP_LANE_SPAWN
	elif lane == 1:
		$AnimatedSprite2D.frame = 1
		position = DOWN_LANE_SPAWN
	else:
		printerr("Invalid lane set for note: " + str(lane))
		return
	speed = DIST_TO_TARGET / 2.0

func destroy(score):
	$CPUParticles2D.emitting = true
	$AnimatedSprite2D.visible = false
	$Timer.start()
	hit = true
	if score == 3:
		$Node2D/Label.text = "GREAT"
		$Node2D/Label.modulate = Color("f6d6bd")
	elif score == 2:
		$Node2D/Label.text = "GOOD"
		$Node2D/Label.modulate = Color("c3a38a")
	elif score == 1:
		$Node2D/Label.text = "OKAY"
		$Node2D/Label.modulate = Color("997577")

func _on_Timer_timeout():
	queue_free()
