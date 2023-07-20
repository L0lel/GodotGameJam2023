extends Node3D

@onready var baseTurret = preload("res://model/turret_single.obj")
@onready var advancedTurret = preload("res://model/turret_double.obj")

@onready var turret = get_node("Turret")
#@onready var enemy_pos : Vector3 = get_node("res://turret_vision.gd").detected_enemy.position NON FUNZIONAAAA

var enemy_seen : bool
@export var rotation_velocity = 1


func _ready():
	self.rotation.y = 0
	turret.mesh = baseTurret #setta la mesh della torretta a quella base
	for child in $visionCast.get_children():
		child.connect("visibile", spotted_enemy)

func _process(delta):
	if enemy_seen:
		#self.rotation.y = lerp_angle(self.rotation.y, look_at(enemy_pos,Vector3.UP), rotation_velocity*delta)
		
		#LOOK AT ritorna void
		pass

func spotted_enemy():
	enemy_seen = true
