extends BaseButton







func _on_redcard_pressed():
			get_tree().change_scene("res://2.tscn")
			$Redcard/button.disconnect("pressed",$Redcard,"_on_redcard_pressed()")
			$Greencard/button.disconnect("pressed",$Greencard,"_on_greencard_pressed")
