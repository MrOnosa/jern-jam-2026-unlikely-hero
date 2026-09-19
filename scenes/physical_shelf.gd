class_name PhysicalShelf
extends Area2D

@export var shelf : Shelf

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body is Hero:
		print("Hero next to shelf %s00 - %s" % [shelf.category, shelf.name])
		body.nearby_shelf = shelf
	

func _on_body_exited(body: Node2D) -> void:
	if body is Hero:
		print("Hero left shelf %s00 - %s"  % [shelf.category, shelf.name])
		body.nearby_shelf = null
