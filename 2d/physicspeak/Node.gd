extends Node


var count = 0

var sprite = preload("res://Sprite.tscn")
onready var container = get_node("sprites")

var sprites = []
var active = false

func _ready():
	while count < 1000:
		spawn_sprite()
	pass

func spawn_sprite():
	count = count + 1
	var x = randf() * OS.get_window_size().x * 4
	var y = randf() * OS.get_window_size().y * 2
	
	var newSprite = sprite.instance()
	newSprite.set_position(Vector2(x, y))
	container.add_child(newSprite)
	sprites.append(newSprite)
	pass
