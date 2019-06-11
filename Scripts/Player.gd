extends "res://Scripts/Entity.gd"

func _input(delta):
	if Input.is_action_pressed('move_up_right'):
		move(Vector2(1, -1))
	elif Input.is_action_pressed('move_down_right'):
		move(Vector2(1, 1))
	elif Input.is_action_pressed('move_down_left'):
		move(Vector2(-1, 1))
	elif Input.is_action_pressed('move_up_left'):
		move(Vector2(-1, -1))
	elif Input.is_action_pressed('move_up'):
		move(Vector2(0, -1))
	elif Input.is_action_pressed('move_right'):
		move(Vector2(1, 0))
	elif Input.is_action_pressed('move_down'):
		move(Vector2(0, 1))
	elif Input.is_action_pressed('move_left'):
		move(Vector2(-1, 0))
	
