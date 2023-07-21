extends CharacterBody3D


@export var speed = -5

var pat
var pos = 0
var flag = true
func set_path(path) -> void:
	pat = path

func  set_mesh(mesh)->void:
	add_child(mesh)

func _physics_process(delta) -> void:
	pat.progress += speed * delta
	if flag:
		pat.progress += pos
		flag = false
