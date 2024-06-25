extends Node

#game variables
const APE_START_POS := Vector2i(65,40)
const CAM_START_POS := Vector2i(600, 320)
var score: float

var speed : float
const START_SPEED : float = 2.0
const MAX_SPEED : float = 25
var screen_size : Vector2i

func _ready():
	new_game()
	screen_size = get_window().size
	pass

func new_game():
	#reset all nodes
	score = 0
	$Little_Witch.position = APE_START_POS
	$Little_Witch.velocity = Vector2i(0,0)
	$Camera2D.position = CAM_START_POS
	$Scroll.position = Vector2i(0, 0)

func _process(_delta):
	speed = START_SPEED 
	
	#move Ape and camera
	$Little_Witch/Body.position.x += speed 
	$Camera2D.position.x += speed
	
	#update ground position
	if $Camera2D.position.x - $Scroll.position.x > screen_size.x * 1.5:
		$Scroll.position.x += screen_size.x
	


