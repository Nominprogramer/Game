extends Node2D

var questions = {
	"questions":["Do You like Rainbows?","What is your favorite coloured rainbow?"]
}
var answers_1 = {
	"answers":["Yes","Dirt"]
}

var answers_2 = {
	"answers":["No","Grass"]
}

func _ready() -> void:
	$Label.text = questions.questions[0]
	
	

func _physics_process(delta: float) -> void:
	$No.text = answers_2.answers[$No.current]
	$Yes.text = answers_1.answers[$Yes.current]
