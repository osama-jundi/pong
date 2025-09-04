extends CharacterBody2D


const speed = 800.0

func _physics_process(delta: float) -> void:
	var direction=0.0
	if Input.is_action_pressed("move_up_1"):
		direction=-1
	if Input.is_action_pressed("move_down_1"):
		direction=1
	velocity.y=direction*speed
	var collision=move_and_collide(velocity* delta)
	if collision:
		velocity=Vector2.ZERO
