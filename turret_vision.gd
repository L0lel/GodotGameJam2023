extends RayCast3D

signal visibile

func _process(delta):
	if is_colliding() == true and get_collider().is_in_group("enemies"):
		emit_signal("visibile")
