extends Control

@export var bg_color : Color = Color.BLACK
@export var to_scene : PackedScene = null
@export var title_color := Color.BLUE_VIOLET
@export var text_color := Color.WHITE
@export var title_font : FontFile = null
@export var text_font : FontFile = null
@export var Music : AudioStream = null
@export var Use_Video_Audio : bool = false
@export var Video : VideoStream = null

const section_time := 2.0
const line_time := 0.3
const base_speed := 70
const speed_up_multiplier := 10.0

var scroll_speed : float = base_speed
var speed_up := false

@onready var colorrect := $ColorRect
@onready var line := $CreditsContainer/Line
var started := false
var finished := false

var section
var section_next := true
var section_timer := 0.0
var line_timer := 0.0
var curr_line := 0
var lines := []

var credits = [
	[
		"A game by 三个老外"
	],[
		"Programming",
		"Elvis",
		"Luciano",
		"Elbert"
	],[
		"Sound Effects",
		"Why are you Gay?"
	],[
		"Testers",
		"三",
		"个",
		"老外"
	],[
		"Tools used",
		"Developed with Godot Engine",
		" ", 
		"https://godotengine.org/license",
		"",
		"Art created with My Favourite Art Program",
		"ALL WEBSITE OR ART SPRITE USED PUT HERE!"
	],[
		"Special thanks"," ",
		"My parents",
		"My friends",
		"and",
		"My pet cock"
	]
]

func _ready():
	colorrect.color = bg_color
	if !Use_Video_Audio:
		var stream = AudioStreamPlayer.new()
		stream.set_stream(Music)
		add_child(stream)
		stream.play()
	

func _process(delta):
	scroll_speed = base_speed * delta
	
	if section_next:
		section_timer += delta * speed_up_multiplier if speed_up else delta
		if section_timer >= section_time:
			section_timer -= section_time
			
			if credits.size() > 0:
				started = true
				section = credits.pop_front()
				curr_line = 0
				add_line()
	
	else:
		line_timer += delta * speed_up_multiplier if speed_up else delta
		if line_timer >= line_time:
			line_timer -= line_time
			add_line()
	
	if speed_up:
		scroll_speed *= speed_up_multiplier
	
	if lines.size() > 0: #if want to make ur own use this line, this basically the scrooling shit
		for l in lines:
			l.set_global_position(l.get_global_position() - Vector2(0, scroll_speed))
			if l.get_global_position().y < l.get_line_height():
				lines.erase(l)
				l.queue_free()
	elif started:
		finish()


func finish():
	if not finished:
		finished = true
		if to_scene != null:
			var path = to_scene.get_path()
			get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")
		else:
			get_tree().change_scene_to_file("res://src/Extra/MainScreen/Main.tscn")


func add_line(): #adding line from array above
	var new_line = line.duplicate()
	new_line.text = section.pop_front()
	lines.append(new_line)
	if curr_line == 0:
		if title_font != null:
			new_line.set("theme_override_fonts/font", title_font)
		new_line.set("theme_override_colors/font_color", title_color)
	
	else:
		if text_font != null:
			new_line.set("theme_override_fonts/font", text_font)
		new_line.set("theme_override_colors/font_color", text_color)
	
	$CreditsContainer.add_child(new_line) #yeh, add child line
	
	if section.size() > 0:
		curr_line += 1
		section_next = false
	else:
		section_next = true


func _unhandled_input(event): #skip shit but not added yet
	if event.is_action_pressed("ui_cancel"):
		finish()
	if event.is_action_pressed("ui_down") and !event.is_echo():
		speed_up = true
	if event.is_action_released("ui_down") and !event.is_echo():
		speed_up = false
