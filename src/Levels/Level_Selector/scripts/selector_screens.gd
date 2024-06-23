extends Node

# Variables
var speed: float = 100.0

# Referencias a los nodos, inicializadas en _ready()
var background: Sprite
var scroll: StaticBody2D
var ape: CharacterBody2D
var camera: Camera2D
var scroll_shape: CollisionShape2D

func _ready():
	# Asume que los nodos están en rutas específicas, ajusta según sea necesario
	background = get_node("/root/YourScene/Background") as Sprite
	ape = get_node("/root/YourScene/Ape") as CharacterBody2D
	camera = get_node("/root/YourScene/Camera2D") as Camera2D

	# Accede a nodos instanciados en el árbol de nodos
	scroll = get_node("/root/Map/Scroll") as StaticBody2D
	scroll_shape = scroll.get_node("CollisionShape2D") as CollisionShape2D

func _process(delta):
	# Mover el fondo de derecha a izquierda de forma infinita
	background.position.x -= speed * delta
	if background.position.x < -background.texture.get_size().x:
		background.position.x += background.texture.get_size().x

	# Mover el objeto Scroll de derecha a izquierda de forma infinita
	scroll.position.x -= speed * delta
	var extents_x = scroll_shape.shape.extents.x
	if scroll.position.x < -extents_x * 2:
		scroll.position.x += get_viewport_rect().size.x + extents_x * 2

	# El personaje Ape no se moverá automáticamente en este script

	# La cámara puede seguir al personaje o mantenerse estática si lo prefieres
	camera.position = ape.position
