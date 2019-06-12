extends KinematicBody2D

var cell_size

func _ready():
	cell_size = Global.cell_size

func move(direction):
	if !test_move(transform.translated(direction * cell_size), Vector2()):
		var motion = Vector2()
		
		if direction == Vector2(0, -1):		# up
			$AnimatedSprite.rotation_degrees = 180
		elif direction == Vector2(1, -1):	# up-right
			$AnimatedSprite.rotation_degrees = 225
		elif direction == Vector2(1, 0):	# right
			$AnimatedSprite.rotation_degrees = 270
		elif direction == Vector2(1, 1):	# down-right
			$AnimatedSprite.rotation_degrees = 315
		elif direction == Vector2(0, 1):	# down
			$AnimatedSprite.rotation_degrees = 0
		elif direction == Vector2(-1, 1):	# down-left
			$AnimatedSprite.rotation_degrees = 45
		elif direction == Vector2(-1, 0):	# left
			$AnimatedSprite.rotation_degrees = 90
		elif direction == Vector2(-1, -1):	# up-left
			$AnimatedSprite.rotation_degrees = 135
		position += direction * cell_size