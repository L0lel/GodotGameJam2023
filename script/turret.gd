extends Node3D

@onready var baseTurret = preload("res://model/turret_single.obj")
@onready var advancedTurret = preload("res://model/turret_double.obj")

@onready var turret = get_node("Turret")

var enemy_seen : bool
var init_yrotation = 0

func _ready():
	turret.mesh = baseTurret #setta la mesh della torretta a quella base
	for child in $visionCast.get_children():
		child.connect("visibile", spotted_enemy)

func _process(delta):
	if enemy_seen:
		pass #TODO: guardare il nemico(look_at) e successivamente sparare
		#implementado funzione shoot

func spotted_enemy():
	init_yrotation = rotation_degrees.y
	enemy_seen = true
