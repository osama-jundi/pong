extends Node
@onready var score_1_: Label = $score_1_
@onready var score_2_: Label = $score_2_

var score1=0
func add_score_1():
	score1+=1
	score_1_.text=str(score1)
	print(score1)
var score2=0
func add_score_2():
	score2+=1
	score_2_.text=str(score2)
	print(score2)
