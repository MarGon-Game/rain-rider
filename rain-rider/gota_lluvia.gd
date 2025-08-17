class_name RainDrop
extends Area2D

var velocity : Vector2 = Vector2.ZERO
var lifeTime : float = 5.0
var timeStart : float = 0.0

@onready var sound : AudioStreamPlayer = $WaterHit

var hit : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocity = Vector2.ZERO
	timeStart = Time.get_ticks_msec()
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if hit == false:
		velocity.y += delta * 9.81
		global_position += velocity
		var current_time = Time.get_ticks_msec()
		var elapsed_time = (current_time - timeStart) / 1000.0
		if elapsed_time >= lifeTime - 1 :
			queue_free()
	else:
		if sound.playing == false:
			queue_free()
	pass

func _on_body_entered(body: Node2D) -> void:
	if body is Player and hit == false:
		sound.play()
		body.DecreaseLive(1)
	#queue_free()
	$CollisionShape2D.disabled = true
	hit = true
	visible = false	
	pass
