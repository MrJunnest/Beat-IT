extends Node2D

# Variables for managing note spawning and player input
var note_scene = preload("res://src/Levels/Tests/TestLevel/Test1/note.tscn")
var notes = []

# MIDI player node reference
@onready var midi_player = $MidiPlayer

# Called when the node enters the scene tree
func _ready():
	# Connect to MIDI event signal if not already connected, just in case shit
	if not midi_player.is_connected("midi_event", Callable(self, "_on_midi_player_midi_event")):
		midi_player.connect("midi_event", Callable(self, "_on_midi_player_midi_event"))
	
	

# Spawns a note at a specific position WIP
func spawn_note():
	print(null)

# Handle MIDI events to spawn notes
func _on_midi_player_midi_event(channel, event):
	if channel.number == 0 and event.type == 144:  # Note On event (adjust condition as per MIDI events)
		print(null)

# Detect player input to hit notes (placeholder)
func _input(event):
	if event.is_action_pressed("hit_key"):
		for note in notes:
			if note.is_in_hit_zone():  # Custom method to check if the note is in the hit zone
				note.hit()  # Custom method to handle note hit
				notes.erase(note)
				break
