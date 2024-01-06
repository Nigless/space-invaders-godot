extends CharacterBody2D


const SPEED = 200

func _physics_process(delta):

	var distance = SPEED * delta
	var horisontal = Input.get_axis("fly_left", "fly_right")
	var vertical = Input.get_axis("fly_up", "fly_down")

	var parent_size = get_parent().size
	var parent_position = get_parent().position

	self.position.x = clamp(self.position.x + horisontal * distance, 0, parent_size.x)
	self.position.y = clamp(self.position.y + vertical * distance, 0, parent_size.y)
	
	var collision = move_and_collide(Vector2.ZERO)
	
	if collision:
		queue_free()
