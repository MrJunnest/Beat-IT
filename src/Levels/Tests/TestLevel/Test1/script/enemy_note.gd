extends Area2D
#for note spawn and deletion.

const TARGET_X = 360
const SPAWN_X = 500 #Subject to change!!!
const DIST_TO_TARGET = TARGET_X - SPAWN_X 

const UP_LANE_SPAWN = Vector2(SPAWN_X, 180) 
const DOWN_LANE_SPAWN = Vector2(SPAWN_X, 280)

var speed = 0
var hit = false #check hit on collision box or not

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func initialize(lane): #starting lane location
	if lane == 0:
		#$AnimatedSprite2D.frame = 0 Subject to change, will change to animated sprite or something else
		position = UP_LANE_SPAWN
	elif lane ==1:
		#add another animsprite
		position = DOWN_LANE_SPAWN
	else:
		printerr("WHAT THE DAWG DOIN??: " + str(lane)) #debug line IF there is a spawn error :P
		return
		
	speed = DIST_TO_TARGET / 2.0 #SUBJECT TO CHANGE!!!

# for movement later
func _process(delta):
	pass

func GETRAILED(score): #destroy note + get score based on hit timing
	pass
 
