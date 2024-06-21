extends CanvasLayer

@onready var amin = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	layer = -1
	amin.play("trans_1")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func change_scene(path: String) -> void:
	layer = 1
	amin.play("trans_1")
	get_tree().change_scene_to_file(path)
	amin.play_backwards("trans_1")
	
