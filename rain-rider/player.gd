class_name Player
extends CharacterBody2D

enum PlayerStates{ALIVE,DEAD}
const SPEED : float = 100.0
const DEACCELERATION : float = 50.0
var lives : int = 3
var direction : Vector2 = Vector2.ZERO
var currentState : PlayerStates = PlayerStates.ALIVE 

@onready var animation : AnimatedSprite2D = $Animations

func UpdateDirection() -> void:
	direction = Input.get_vector("LEFT","RIGHT","UP","DOWN").normalized()
	pass

func ProcessMovement() -> void:
	#Movimiento
	if direction != Vector2.ZERO:
		velocity.x = move_toward(velocity.x,SPEED * direction.x,DEACCELERATION)
		velocity.y = move_toward(velocity.y,SPEED * direction.y,DEACCELERATION)
	else : #Desaceleracion
		velocity.x = move_toward(velocity.x,0.0,DEACCELERATION)
		velocity.y = move_toward(velocity.y,0.0,DEACCELERATION)
	pass
	move_and_slide()

func DecreaseLive(amount : int) -> void:
	lives -= amount
	if lives <= 0:
		lives = 0
		currentState = PlayerStates.DEAD
	pass

func IsDead() -> bool:
	return lives == 0

func PlayAnimations() -> void:
	if direction.x < 0.0:
		animation.flip_h = true
	elif direction.x > 0.0:
		animation.flip_h = false
		
	if direction == Vector2.ZERO:
		animation.play("reposo")
	else:
		animation.play("andando")
	pass

func _init() -> void:
	currentState = PlayerStates.ALIVE
	lives = 3
	pass
	

func _physics_process(delta: float) -> void:
	if currentState == PlayerStates.ALIVE:
		UpdateDirection()
		ProcessMovement()
		pass
	pass

func _process(delta: float) -> void:
	if currentState == PlayerStates.ALIVE:
		PlayAnimations()
	pass
