extends Button

var current = 0

func _on_Button_pressed() -> void:
	#get_tree().change_scene("res://Node2D.tscn")
	if current <=0:
		current +=1
