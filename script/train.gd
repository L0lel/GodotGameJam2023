extends CharacterBody3D

@export var vel : int 

var i =0 
var wagons = load("res://script/train_utils.gd").new()
var vagone = preload("res://entity/wagon.tscn").instantiate()

func add_wagon(wagon, pos) -> void:
	
	var wag = wagon.instantiate()

	vagone.set_mesh(wag)
	$"../..".add_child(PathFollow3D.new())
	var new_path = $"../..".get_child(get_child_count()-1)
	vagone.set_path(new_path)
	vagone.pos = pos
	new_path.add_child(vagone)
	


func _physics_process(delta) -> void:
	i -= 1
	if i == -2 :
		add_wagon(wagons.med_cargo, 1)
#		pass
		
	$"..".progress += vel * delta
	
	
