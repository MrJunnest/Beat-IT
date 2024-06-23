extends Node

#game variables
const APE_START_POS := Vector2i(35,300)
const CAM_START_POS := Vector2i(600, 320)

var speed : float
const START_SPEED : float = 8.0
const MAX_SPEED : float = 25

func _ready():
	new_game()
	pass

func new_game():
	#reset all nodes
	$Ape.position = APE_START_POS
	$Ape.velocity = Vector2i(0,0)
	$Camera2D.position = CAM_START_POS
	$Scroll.position = Vector2i(0, 0)

func _process(_delta):
	speed = START_SPEED 
	
	#move Ape and camera
	$Ape/Body.position.x += speed
	$Camera2D.position.x += speed
	
