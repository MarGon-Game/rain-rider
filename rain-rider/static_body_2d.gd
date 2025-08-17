extends StaticBody2D

@onready var sonido = $AudioStreamPlayer2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"): 
		sonido.play()
		queue_free() # elimina la bomba después de sonar (opcional)
