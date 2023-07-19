extends Node3D


@export var enemyScene : PackedScene
@export var spawn: int
@export var timer = 2.0  

@export var Path: Path3D

var spawnTimer = 0.0
var spawnCount = 0

func _createPath(enemy, pat):
	
	pat.add_child(PathFollow3D.new())
	enemy.set_path(pat.get_child(0))
	pat.get_child(0).add_child(enemy)
	
	return pat


func _process(delta):
	spawnTimer += delta
	
	if spawnTimer >= timer :
		var pat = Path.duplicate() 
		spawnTimer = 0.0
		spawnCount += 1
		
		var enemy = enemyScene.instantiate()
		
		enemy.transform.origin = Vector3(0,0,0)
		
		add_child(_createPath(enemy,pat))
	else:
		pass

