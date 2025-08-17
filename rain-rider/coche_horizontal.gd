extends CharacterBody2D

@onready var choque = $AudioStreamPlayer2D
@onready var claxon = $AudioStreamPlayer2D2
@export var velocidad = 200.0
@export var direccion: Vector2 = Vector2.RIGHT

#movimiento
#func _physics_process(delta):
#	velocity = direccion * velocidad
#	move_and_slide()

#sonido de choque
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		choque.play()

#sonido de claxon
func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.is_in_group("jugador"):
		claxon.play()
