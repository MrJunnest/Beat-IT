extends AnimatedSprite2D
#collision area for note scoring later
var perfect = false
var good = false
var okay = false
var current_note = null


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_PerfectArea_area_entered(area):
	if area.is_in_group("enemy_note"):
		perfect = true


func _on_PerfectArea_area_exited(area):
	if area.is_in_group("enemy_note"):
		perfect = false


func _on_GoodArea_area_entered(area):
	if area.is_in_group("enemy_note"):
		good = true


func _on_GoodArea_area_exited(area):
	if area.is_in_group("enemy_note"):
		good = false


func _on_OkayArea_area_entered(area):
	if area.is_in_group("enemy_note"):
		okay = true
		current_note = area


func _on_OkayArea_area_exited(area):
	if area.is_in_group("enemy_note"):
		okay = false
		current_note = null
