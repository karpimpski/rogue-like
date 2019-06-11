extends Node

var cell_size = 32

func _input(delta):
	if Input.is_action_pressed('quit'):
		get_tree().quit()