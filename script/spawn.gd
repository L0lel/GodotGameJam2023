extends Node3D


@export var enemyScene : PackedScene
@export var maxSpawn: int
@export var spawn_time = 2.0  
@export var horde_time = 2.0  

@export var Path: Path3D

var spawnTimer = spawn_time
var hordeTimer = horde_time
var spawnCount = 0

var c = preload("res://model/composite_models/big_turret_train.tscn")
func _createPath(enemy, pat):
	
	pat.add_child(PathFollow3D.new())
	enemy.set_path(pat.get_child(0))
	pat.get_child(0).add_child(enemy)
	
	return pat


func _process(delta):
	print(enemyScene)
	hordeTimer += delta
	spawnTimer += delta
	
	if hordeTimer >= horde_time :
		hordeTimer = 0.0
		spawnCount = 0
		
		
	
	if spawnTimer >= spawn_time and maxSpawn > spawnCount:
		print(spawnCount)
		var pat = Path.duplicate() 
		spawnTimer = 0.0
		spawnCount += 1
		
		var enemy = enemyScene.instantiate()
		
		enemy.transform.origin = Vector3(0,0,0)
		
		add_child(_createPath(enemy,pat))
	else:
		pass
