extends PhysicObject

class_name creature

func _ready():
	pass


func _process(delta):
	if motion.x > 0:
		$Sprite.flip_h = true
	elif motion.x < 0:
		$Sprite.flip_h = false
		
