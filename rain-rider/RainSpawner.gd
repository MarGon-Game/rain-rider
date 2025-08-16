class_name Spawner
extends Node2D

@export var area_2d : Area2D = null
@export var collision_shape : CollisionShape2D = null
var enemy_scene = preload("res://gota_lluvia.tscn")
var spawn_area_shape 
var spawn_area_origin

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if area_2d != null and collision_shape != null:
		spawn_area_shape = collision_shape.shape
		spawn_area_origin = area_2d.global_position - spawn_area_shape.extents # For RectangleShape2D
	pass # Replace with function body.

func generate_random_position_in_area() -> Vector2:
	var x = randf_range(spawn_area_origin.x, spawn_area_origin.x + spawn_area_shape.extents.x * 2)
	var y = randf_range(spawn_area_origin.y, spawn_area_origin.y + spawn_area_shape.extents.y * 2)
	return Vector2(x,y)

func spawn_object_in_area():
	var new_enemy = enemy_scene.instantiate()
	new_enemy.position = generate_random_position_in_area()
	add_child(new_enemy) # Add the object as a child of the current node



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
