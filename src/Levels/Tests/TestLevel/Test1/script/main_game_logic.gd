extends Node2D

# Variables for managing note spawning and player input
var note = preload("res://src/Levels/Tests/TestLevel/Test1/scene/enemy_note.tscn")
var notes = []
var lane = 0
var instance


# MIDI player node reference
@onready var midi_player = $MidiPlayer

# Called when the node enters the scene tree
func _ready():
	# Connect to MIDI event signal if not already connected, just in case shit
	if not midi_player.is_connected("midi_event", Callable(self, "_on_midi_player_midi_event")):
		midi_player.connect("midi_event", Callable(self, "_on_midi_player_midi_event"))
	
	

# Spawns a note at a specific position WIP
func spawn_note(to_spawn):
	if to_spawn > 0: #spawn first time
		var rand = randi() % 3
		var instance = note.instantiate()
		lane = rand
		instance.initialize(lane)
		add_child(instance)
	if to_spawn > 1: #make sure the second spawn is not in the first lane so randomiser shit
		var rand = randi() % 3 
		while rand == lane:
			rand = randi() % 3
		lane = rand
		instance = note.instantiate()
		instance.initialize(lane)
		add_child(instance)

# Handle MIDI events to spawn notes
func _on_midi_player_midi_event(channel, event):
	if channel.number == 0 and event.type == 144:  # Note On event (adjust condition as per MIDI events)
		spawn_note(1)

# Detect player input to hit notes (placeholder)
func _input(event):
	if event.is_action_pressed("move_up") or event.is_action_pressed("move_down"):
		for note in notes:
			if note.is_in_hit_zone():  # Custom method to check if the note is in the hit zone
				note.hit()  # Custom method to handle note hit
				notes.erase(note)
				break
