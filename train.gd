extends CharacterBody3D

@onready var cargo = preload("res://model/monorail_trainCargo.obj")
@onready var end = preload("res://model/monorail_trainEnd.obj")
@onready var flat_cargo = preload("res://model/monorail_trainFlat.obj")
@onready var box = preload("res://model/monorail_trainBox.obj")
@onready var passeger = preload("res://model/monorail_trainPassenger.obj")
@onready var big_turret = preload("res://model/composite_models/big_turret_train.tscn")
@onready var full_cargo = preload("res://model/monorail_trainPassenger.obj")
@onready var med_cargo = preload("res://model/composite_models/med_filled_cargo.tscn")
@onready var small_cargo = preload("res://model/composite_models/small_cargo.tscn")
@onready var small_turret = preload("res://model/composite_models/small_turret_train.tscn")

var wagons = preload("res://train_utils.gd").new()


var i = 0

func add_wagon(wagon) -> void:
	add_child(wagon.instantiate())

func _physics_process(delta):
	i += 1
	if i == 2 :
		add_wagon(wagons.small_cargo)
