extends Control

var levels_cleared = 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if not FileAccess.file_exists("user://save_file"):
		var save = FileAccess.open("user://save_file",FileAccess.WRITE)
		save.store_line("1")
		save.close()
	else:
		var save = FileAccess.open("user://save_file",FileAccess.WRITE)
		save.open("user://save_file",FileAccess.READ)
		if(int(save.get_line())<1):
			save.close()
			save.open("user://save_file",FileAccess.WRITE)
			save.store_line("1")
		save.close()
	match levels_cleared:
		1:
			$VBoxContainer/HBoxContainer/TextureButton.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton2.disabled = true
			$VBoxContainer/HBoxContainer/TextureButton3.disabled = true
			$VBoxContainer/HBoxContainer/TextureButton4.disabled = true
		2:
			$VBoxContainer/HBoxContainer/TextureButton.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton2.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton3.disabled = true
			$VBoxContainer/HBoxContainer/TextureButton4.disabled = true
		3:
			$VBoxContainer/HBoxContainer/TextureButton.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton2.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton3.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton4.disabled = true
		4:
			$VBoxContainer/HBoxContainer/TextureButton.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton2.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton3.disabled = false
			$VBoxContainer/HBoxContainer/TextureButton4.disabled = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	var level = preload("res://Level1.tscn")
	get_tree().change_scene_to_packed(level)
	pass # Replace with function body.


func _on_TextureButton2_pressed():
	var level = preload("res://Level2.tscn")
	get_tree().change_scene_to_packed(level)
	pass # Replace with function body.


func _on_TextureButton3_pressed():
	#var level = preload("res://Level3.tscn")
	#get_tree().change_scene_to_packed(level)
	pass # Replace with function body.


func _on_TextureButton4_pressed():
	#var level = preload("res://Level4.tscn")
	#get_tree().change_scene_to_packed(level)
	pass # Replace with function body.


func _on_Button_pressed():
	if not FileAccess.file_exists("user://save_file"):
		var save = FileAccess.open("user://save_file",FileAccess.WRITE)
		save.store_line("1")
		save.close()
	else:
		var save = FileAccess.open("user://save_file",FileAccess.WRITE)
		save.open("user://save_file",FileAccess.READ)
		if(int(save.get_line())<1):
			save.close()
			save.open("user://save_file",FileAccess.WRITE)
			save.store_line("1")
		save.close() # Replace with function body.
