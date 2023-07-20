extends CharacterBody3D

@export var vel : int 

var wagons = preload("res://script/train_utils.gd").new()


var i = 0

func add_wagon(wagon, pos) -> void:
	var wag = wagon.instantiate()
	
	wag.transform.origin = Vector3(0,0, -pos - 0.09 )
	
	$"..".add_child(wag)

func _physics_process(delta) -> void:
	i -= 1
	if i == -2 :
		add_wagon(wagons.med_cargo, 1)
		
	$"..".progress += vel * delta
