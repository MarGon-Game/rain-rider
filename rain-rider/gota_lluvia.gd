class_name RainDrop
extends Area2D

var velocity : Vector2 = Vector2.ZERO
var lifeTime : float = 5.0
var timeStart : float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2.ZERO
	timeStart = Time.get_ticks_msec()
	pass 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity.y += delta * 9.81
	global_position += velocity
	var current_time = Time.get_ticks_msec()
	var elapsed_time = (current_time - timeStart) / 1000.0
	if elapsed_time >= lifeTime - 1 :
		print("liberar gota")
		queue_free()
	pass

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		print("gota toco jugador")
		body.DecreaseLive(1)
		queue_free()
	pass
