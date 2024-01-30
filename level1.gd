extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Goal.Goal_achieved.connect(Callable(self,"change_level"))
	pass # Replace with function body.
func change_level():
	var level2 = preload("res://level2.tscn")
	get_tree().change_scene_to_packed(level2)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
