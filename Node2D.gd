extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("Burn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_2d_body_entered(body):
	print(body.get_class())
	if body is CharacterBody2D:# or body is get_node("res://fox.tscn").get_class():
		print("level win")
	pass # Replace with function body.
