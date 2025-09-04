extends Area2D
@onready var gamemannger: Node = %gamemannger

func _on_body_entered(body):
	print("palayer 2 got a point")
	gamemannger.add_score_2()
	body.reset_ball()
func _ready():
	connect("body_entered", _on_body_entered)
