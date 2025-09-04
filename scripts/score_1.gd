extends Area2D
@onready var gamemannger: Node = %gamemannger

func _on_body_entered(body):
	print("palayer 1 got a point")
	gamemannger.add_score_1()
	body.reset_ball()
	
func _ready():
	connect("body_entered", _on_body_entered)
