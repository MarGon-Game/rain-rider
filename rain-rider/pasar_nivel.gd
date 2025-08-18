extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):   # asegúrate que tu Player está en este grupo
		get_tree().change_scene_to_file("res://nivel_2.tscn")
