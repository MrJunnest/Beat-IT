extends Area2D
#ALL OF THS WIP, NEED SPAWNING LOGIC FIRST

# Check if the note is in the hit zone
func is_in_hit_zone():
	var hit_zone = get_parent().get_node("HitZone")  # Reference to the hit zone node
	return hit_zone.get_rect().has_point(position)

# Handle note hit
func hit():
	queue_free()  # Remove the note from the scene
