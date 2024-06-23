extends Node2D

# Variables for managing note spawning and player input
var note_scene = preload("res://src/Levels/Tests/TestLevel/Test1/note.tscn") #suc cock
var notes = []

# Load and parse the MIDI file
var midi_player = preload("res://src/Levels/Tests/TestLevel/Test1/test_midi.tscn").new()

# Called when the node enters the scene tree
func _ready():
	add_child(midi_player)
	midi_player.connect("midi_event", self, "_on_midi_player_midi_event")
	midi_player.load_file("res://src/Levels/Tests/TestLevel/Test1/Tetris - Tetris Main Theme")
	midi_player.play()

# Spawns a note at a specific position
func spawn_note():
	var note = note_scene.instance()
	note.position = Vector2(300, 0)  # Adjust position as needed
	add_child(note)
	notes.append(note)

# Handle MIDI events to spawn notes
func _on_midi_player_midi_event(channel, event):
	if channel.number == 0 and event.type == 144:  # Note On event
		spawn_note()

# Detect player input to hit notes
func _input(event):
	if event.is_action_pressed("hit_key"):
		for note in notes:
			if note.is_in_hit_zone():  # Custom method to check if the note is in the hit zone
				note.hit()  # Custom method to handle note hit
				notes.erase(note)
				break
