extends CharacterBody2D



const speed = 600.0
var direction=Vector2(1,1)
var initial_position: Vector2
func _ready() -> void:
	initial_position = position
	velocity=direction*speed
func _physics_process(delta: float) -> void:
	var collison=move_and_collide(velocity* delta)
	if collison:
		var normal=collison.get_normal()
		velocity=velocity.bounce(normal)
		velocity=velocity*1.05
func reset_ball():
	position = initial_position
	# Randomize the direction
	direction = Vector2(1, 1).normalized()
	if randf() > 0.5:
		direction.x *= -1
	velocity = direction * speed
