extends Area2D

func _on_body_entered(body):
	if body.name == "CharacterBody2D":
		get_tree().reload_current_scene()	
		queue_free()
		print("WE COLLIDE WITH LAVA")
	pass
		
