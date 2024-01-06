extends StaticBody2D

const SPEED = 100

func _physics_process(delta):
	
	if self.position.y > 0:
		move_and_collide(Vector2.DOWN * SPEED * delta)
	else:
		queue_free()
	
