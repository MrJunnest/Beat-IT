extends CharacterBody2D

# Vertical movement speed
var speed = 2000

# Variables for initial and final positions
var top_position = Vector2(0, -150)  # Adjust this according to your scene
var bottom_position = Vector2(0, 150)  # Adjust this according to your scene
var target_position = Vector2()

func _ready():
	# Initially, set the target position to the current position
	target_position = global_position

func _process(delta):
	if Input.is_action_just_pressed("ui_up"):
		target_position = global_position + top_position
	elif Input.is_action_just_pressed("ui_down"):
		target_position = global_position + bottom_position
	
	# Calculate the direction to move
	var direction = (target_position - global_position).normalized()
	
	# Move the character towards the target position
	if global_position.distance_to(target_position) > speed * delta:
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
