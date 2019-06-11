extends KinematicBody2D

var cell_size

func _ready():
	cell_size = Global.cell_size

func move(direction):
	var motion = Vector2()
	
	if direction == Vector2(0, -1):		# up
		rotation_degrees = 180
		motion.y = -cell_size
	elif direction == Vector2(1, -1):	# up-right
		rotation_degrees = 225
		motion.x = cell_size
		motion.y = -cell_size
	elif direction == Vector2(1, 0):	# right
		rotation_degrees = 270
		motion.x = cell_size
	elif direction == Vector2(1, 1):	# down-right
		rotation_degrees = 315
		motion.x = cell_size
		motion.y = cell_size
	elif direction == Vector2(0, 1):	# down
		rotation_degrees = 0
		motion.y = cell_size
	elif direction == Vector2(-1, 1):	# down-left
		rotation_degrees = 45
		motion.x = -cell_size
		motion.y = cell_size
	elif direction == Vector2(-1, 0):	# left
		rotation_degrees = 90
		motion.x = -cell_size
	elif direction == Vector2(-1, -1):	# up-left
		rotation_degrees = 135
		motion.x = -cell_size
		motion.y = -cell_size
	
	move_and_collide(motion)