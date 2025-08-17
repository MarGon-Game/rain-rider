extends PathFollow2D

@export var speed = 0.1

func _process(delta: float):
	progress_ratio += delta * speed
