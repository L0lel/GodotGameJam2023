class_name train_utils

var cargo; var end; var flat_cargo; var box; var passeger; var big_turret 
var full_cargo; var med_cargo; var small_cargo; var small_turret   

func _init():
	cargo = preload("res://model/monorail_trainCargo.obj")
	end = preload("res://model/monorail_trainEnd.obj")
	flat_cargo = preload("res://model/monorail_trainFlat.obj")
	box = preload("res://model/monorail_trainBox.obj")
	passeger = preload("res://model/monorail_trainPassenger.obj")
	big_turret = preload("res://model/composite_models/big_turret_train.tscn")
	full_cargo = preload("res://model/monorail_trainPassenger.obj")
	med_cargo = preload("res://model/composite_models/med_filled_cargo.tscn")
	small_cargo = preload("res://model/composite_models/small_cargo.tscn")
	small_turret = preload("res://model/composite_models/small_turret_train.tscn")
func get_box():
	return box
