extends creature

const max_speed = 80
const jump_force = -200
const max_jump_time = 0.2

var jumping = false
var jumping_time = 0

func set_jumping(value):
	jumping = value
	if not jumping:
		jumping_time = 0
		
func get_jumping():
	return jumping

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("right"):
		motion.x = max_speed
	elif Input.is_action_pressed("left"):
		motion.x = -max_speed
	else:
		motion.x = 0
	
	if is_on_floor() and Input.is_action_just_pressed("jump") and not get_jumping():
		set_jumping(true)
		
	if get_jumping() and Input.is_action_just_released("jump"):
		set_jumping(false)
	
	if get_jumping():
		motion.y = jump_force
		jumping_time += delta
		if jumping_time > max_jump_time:
			set_jumping(false)

func _physics_process(delta):
	pass
	
		
