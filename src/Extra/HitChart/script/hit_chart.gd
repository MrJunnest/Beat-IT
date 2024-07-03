extends CanvasLayer

var inside_area_UP = false
var selected_key = 0 
var position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if inside_area_UP:
		pass
	

func spawn(key:int, pos:Vector2) -> void:
	position = pos
	match key:
		0:
			selected_key = KEY_UP
			
		1:
			selected_key = KEY_DOWN
	pass



func _on_hit_up_area_entered(area):
	inside_area_UP = true
	pass # Replace with function body.


func _on_hit_up_area_exited(area):
	inside_area_UP = false
	pass # Replace with function body.
