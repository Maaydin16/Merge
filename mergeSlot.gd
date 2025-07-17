extends Control

var current_monster = null
@onready var texture_rect = $TextureRect

func can_drop_data(position, data):
	return is_empty() and typeof(data) == TYPE_OBJECT

func drop_data(position, data):
	if is_empty():
		set_monster(data)
		var spawnbox = get_tree().get_root().get_node("Main/SpawnBox")
		spawnbox.spawn_monster()

func set_monster(monster):
	current_monster = monster
	if monster:
		texture_rect.texture = monster.texture
		texture_rect.visible = true
	else:
		texture_rect.texture = null
		texture_rect.visible = false

func is_empty():
	return current_monster == null
