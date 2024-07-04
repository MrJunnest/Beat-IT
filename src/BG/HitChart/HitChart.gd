extends AnimatedSprite2D

var perfect = false
var good = false
var okay = false
var current_note1 = null

@export var input = "Basic"

func _unhandled_input(event):
	if event.is_action(input):
		if event.is_action_pressed(input, false):
			if current_note1 != null:
				if perfect:
					get_parent().increment_score(3)
					current_note1.destroy(3)
				elif good:
					get_parent().increment_score(2)
					current_note1.destroy(2)
				elif okay:
					get_parent().increment_score(1)
					current_note1.destroy(1)
				_reset()
			else:
				get_parent().increment_score(0)
		if event.is_action_pressed(input):
			frame = 1
		elif event.is_action_released(input):
			$PushTimer.start()


func _on_PerfectArea_area_entered(area):
	if area.is_in_group("note1"):
		perfect = true


func _on_PerfectArea_area_exited(area):
	if area.is_in_group("note1"):
		perfect = false


func _on_GoodArea_area_entered(area):
	if area.is_in_group("note1"):
		good = true


func _on_GoodArea_area_exited(area):
	if area.is_in_group("note1"):
		good = false


func _on_OkayArea_area_entered(area):
	if area.is_in_group("note1"):

		okay = true
		current_note1 = area


func _on_OkayArea_area_exited(area):
	if area.is_in_group("note1"):
		okay = false
		current_note1 = null


func _on_PushTimer_timeout():
	frame = 0


func _reset():
	current_note1 = null
	perfect = false
	good = false
	okay = false
