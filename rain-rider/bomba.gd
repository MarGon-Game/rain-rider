extends StaticBody2D

@onready var sonido = $AudioStreamPlayer2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		sonido.play()
