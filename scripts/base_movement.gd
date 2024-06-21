extends CharacterBody2D



#var declarations 
var target_position: Vector2
var is_moving = false

const MOVE_DISTANCE = 50.0  # Distance the character moves up or down
const MOVE_SPEED = 5.0       # Speed of the movement
# Define the bounds of the game world
const WORLD_TOP_BOUND = -50.0
const WORLD_BOTTOM_BOUND = 0

@onready var animated_sprite = $AnimatedSprite2D

# var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#no need grav? <subject to change>

#set initial possition, player starting position "YOU ARE GOING TO BRAZIL!"
func _ready():
	position = position
	target_position = position #on test position not sure yet
	 #start the normal anim just to test, subject of change to idle

func _physics_process(delta):
	if is_moving: 
		# Move towards the target position smoothly (the main moving code) 星
		position = position.move_toward(target_position, MOVE_SPEED)

		# Check if the character has reached the target position
		if position.distance_to(target_position) < 1.0:
			position = target_position
			is_moving = false

	if position.y < WORLD_TOP_BOUND:
		position.y = WORLD_TOP_BOUND
		target_position.y = WORLD_TOP_BOUND
		is_moving = false
		$AnimationPlayer.play("bumped")  # Play the bumped animation to test
	elif position.y > WORLD_BOTTOM_BOUND:
		position.y = WORLD_BOTTOM_BOUND
		target_position.y = WORLD_BOTTOM_BOUND
		is_moving = false
		$AnimationPlayer.play("bumped") 

func _input(event): #check bound + inputs
	# Get the input direction and handle the movement/deceleration.
	#test up down, not yet ideal, no teleport, no ani yet. subject to change
	if event.is_action_pressed("move_up") and not is_moving:
		var new_position = position + Vector2(0, -MOVE_DISTANCE)
		if new_position.y <= WORLD_TOP_BOUND: #if there is still space/ far from bound then accept the new_position
			target_position = new_position
			is_moving = true
	elif event.is_action_pressed("move_down") and not is_moving:
		var new_position = position + Vector2(0, MOVE_DISTANCE)
		if new_position.y >= WORLD_TOP_BOUND:
			is_moving = true
			target_position = new_position

	move_and_slide()
