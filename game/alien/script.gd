extends CharacterBody2D

const BULLET = preload("res://game/bullet/scene.tscn")

func _physics_process(delta):
	var collision = move_and_collide(Vector2.ZERO)
	
	if collision:
		queue_free()


func _on_timer_timeout():
	var bullet = BULLET.instantiate()
	bullet.position = self.position
	get_parent().add_child(bullet)
