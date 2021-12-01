extends KinematicBody2D

class_name PhysicObject

const gravity = 20
const max_fall_speed = 300

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	motion.y += gravity
	if motion.y > max_fall_speed:
		motion.y = max_fall_speed
		
	motion = move_and_slide(motion, Vector2.UP)
