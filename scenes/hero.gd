class_name Hero
extends CharacterBody2D

const SPEED = 700.0

@export var carrying_capacity : int = 3
var holding : Array[Book] = []
var nearby_shelf : Shelf = null

func _read() -> void:
	holding = []
	

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down").normalized()
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
