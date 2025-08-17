extends StaticBody2D

@onready var explosion = $AudioStreamPlayer2D
@onready var bomba = $AudioStreamPlayer2D2

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		explosion.play()


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		bomba.play()
