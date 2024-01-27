extends Area3D

func _on_body_entered(body):
	if(body.is_in_group("Player")):	
		
		if(self.is_in_group("end")):	
			if(get_tree().current_scene.scene_file_path.to_int()!=3):
				var next_scene_num= get_tree().current_scene.scene_file_path.to_int()+1
				var scene = "res://Scenes/Level_"+str(next_scene_num) +".tscn"
				get_tree().change_scene_to_file(scene)		
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
				get_tree().change_scene_to_file("res://UI/Win.tscn")
		if(self.is_in_group("Trap")):
			Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
			get_tree().change_scene_to_file("res://UI/Lose.tscn")
	pass # Replace with function body.
