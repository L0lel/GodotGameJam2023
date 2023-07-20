extends CharacterBody3D

@onready var originPoint = transform.origin
@export var speed = 1

var pat

func set_path(path) -> void:
	pat = path


func _physics_process(delta) -> void:
	pat.progress += speed * delta
	
