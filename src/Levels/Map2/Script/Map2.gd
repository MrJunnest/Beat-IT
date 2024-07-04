extends Node

# Game variables
const APE_START_POS := Vector2i(65, 40)
const CAM_START_POS := Vector2i(600, 320)
var score: float
var speed: float
const START_SPEED: float = 2.0
const MAX_SPEED: float = 25
var screen_size: Vector2i

func _ready():
	new_game()
	screen_size = get_window().size
	
	 #Hide characters based on MapCharacter visibility choose character
	if MapCharacter.character_visible == 1:
		$Little_Elvis.visible = false
		$Elementals_water_priestess.visible = false

	if MapCharacter.character_visible == 2:
		$Little_Witch.visible = false
		$Elementals_water_priestess.visible = false
	
	if MapCharacter.character_visible == 3:
		$Little_Witch.visible = false
		$Little_Elvis.visible = false
	

func new_game():
	# Reset all nodes
	score = 0
	$Little_Witch.position = Vector2i(70, 500)

	$Little_Elvis.position = Vector2i(10, 550)

	$Elementals_water_priestess.position = Vector2i(-80, 500)


func _process(_delta):
	speed = START_SPEED 
	
	$Little_Witch/Body.position.x += speed 
	$Little_Elvis/Body.position.x += speed
	$Elementals_water_priestess/Body.position.x += speed
	$Camera2D.position.x += speed

	
	if $Camera2D.position.x - $Map_Scroll.position.x > screen_size.x * 1.5:
		$Map_Scroll.position.x += screen_size.x

