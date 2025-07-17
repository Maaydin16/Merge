extends Control

var current_monster = null
@onready var texture_rect = $MonsterTexture

func _ready():
	spawn_monster()

func spawn_monster():
	if current_monster == null:
		current_monster = get_parent().create_random_monster()
		texture_rect.texture = current_monster.texture
		texture_rect.visible = true

func get_drag_data(position):
	if current_monster:
		var preview = texture_rect.duplicate()
		set_drag_preview(preview)
		var data = current_monster
		current_monster = null
		texture_rect.texture = null
		texture_rect.visible = false
		return data
