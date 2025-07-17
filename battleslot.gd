extends Control

var current_monster = null
@onready var texture_rect = $MonsterTexture

func set_monster(monster):
	current_monster = monster
	if monster != null:
		texture_rect.texture = monster.texture
		texture_rect.visible = true
	else:
		texture_rect.texture = null
		texture_rect.visible = false

func is_empty():
	return current_monster == null
