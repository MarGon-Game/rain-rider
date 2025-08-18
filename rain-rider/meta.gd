extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"): 
		GameManager.go_to_level("res://nivel_2.tscn")
