extends Control

@onready var merge_area = $MergeArea
@onready var spawn_box = $SpawnBox

var slime_texture = preload("res://items/slime.png")
var goblin_texture = preload("res://items/goblin.png")

func _ready():
	pass # connect kaldırıldı, artık spawn kutusu kendi kendine drag yapıyor

func create_random_monster():
	var r = randi() % 2
	var m = Monster.new()
	if r == 0:
		m.name = "Slime"
		m.level = 1
		m.texture = slime_texture
	else:
		m.name = "Goblin"
		m.level = 1
		m.texture = goblin_texture
	return m
