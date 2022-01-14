extends Node2D

var current = 0

var questions = {
	"questions":["If you saw god then will you doubt yourself?","If your mom was dying would you kill a thousand people to find the cure?","If you kill your family you live. But if you don't you die. Would you kill them?","How do you think of yourself? Bad or Good?","If you could have a million dollars every day or become a devotee of god and go to heaven, what would you choose?"]
}
var answers_1 = {
	"answers":["YES","Yes","Yep","Good","God's Devotee"]
}

var answers_2 = {
	"answers":["NO","No","Nope","Bad","Million Dollars"]
}




func _physics_process(delta: float) -> void:
	$No.text = answers_2.answers[current]
	$Yes.text = answers_1.answers[current]
	$Label.text = questions.questions[current]
	if $Storer.data.has("God's Devotee"):
		get_tree().change_scene("res://Node2D.tscn")
	

func _on_Yes_pressed() -> void:
	$Storer.data.append($Yes.text)
	if current <=3:
		
		current +=1


func _on_No_pressed() -> void:
	$Storer.data.append($No.text)
	if current <=3:
		
		current +=1
