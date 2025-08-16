extends Control


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://player.tscn")

func _on_creditos_pressed() -> void:
	get_tree().change_scene_to_file("res://creditos.tscn")


func _on_salir_pressed() -> void:
	get_tree().quit()
