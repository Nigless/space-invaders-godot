extends Timer


const BULLET = preload("res://game/ship/weapons/blaster/bullet/scene.tscn")

func _ready():
	self.start()


func _on_timeout():
	self.start()
	var bullet = BULLET.instantiate()
	bullet.position = get_parent().position
	get_parent().get_parent().add_child(bullet)
