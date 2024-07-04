extends CanvasLayer


var perfect = false
var good = false
var okay = false
var current_note = null

@export var input = ""


func _unhandled_input(event):
	if event.is_action(input):
		if event.is_action_pressed(input, false):
			if current_note != null:
				if perfect:
					get_parent().increment_score(3)
					current_note.destroy(3)
				elif good:
					get_parent().increment_score(2)
					current_note.destroy(2)
				elif okay:
					get_parent().increment_score(1)
					current_note.destroy(1)
				_reset()
			else:
				get_parent().increment_score(0)
		if event.is_action_pressed(input):
			frame = 1
		elif event.is_action_released(input):
			$PushTimer.start()
