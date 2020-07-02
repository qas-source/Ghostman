extends KinematicBody2D

class_name Actor

var velocity: = Vector2.ZERO

export var speed: = 100

func _physics_process(delta: float) -> void:
	velocity.x += 0
	velocity.y += 0
	move_and_slide(velocity)
