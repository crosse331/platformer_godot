extends creature

const moving_speed = 50

var moving_direction = 1

func _ready():
	pass

func _process(delta):
	pass

func _physics_process(delta):
	if is_on_wall():
		moving_direction *= -1
		
	motion.x = moving_direction * moving_speed
	
func is_touching_player():
	get_
