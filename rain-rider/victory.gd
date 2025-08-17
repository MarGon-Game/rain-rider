extends Node2D

@onready var music : AudioStreamPlayer = $Victory

@export var main_game_path : String 
@export var main_menu_path : String 


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _pressed_menu() -> void:
	if main_menu_path.is_empty() == false:
		get_tree().change_scene_to_file(main_menu_path)
	pass # Replace with function body.


func _replay_pressed() -> void:
	if main_game_path.is_empty() == false:
		get_tree().change_scene_to_file(main_game_path)
	pass # Replace with function body.
