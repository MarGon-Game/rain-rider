extends Node

# Guardamos el nivel actual
var current_level : String = "res://nivel_1.tscn"

# Función para cambiar de nivel
func go_to_level(level_path: String) -> void:
	current_level = level_path
	get_tree().change_scene_to_file(level_path)

# Función para reiniciar el último nivel jugado
func restart_level() -> void:
	get_tree().change_scene_to_file(current_level)
