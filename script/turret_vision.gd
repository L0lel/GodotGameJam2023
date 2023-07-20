extends RayCast3D

signal visibile
var detected_enemy : CharacterBody3D

func _process(delta):
	if is_colliding() == true and get_collider().is_in_group("enemies"):
		detected_enemy = get_collider()
		emit_signal("visibile")
