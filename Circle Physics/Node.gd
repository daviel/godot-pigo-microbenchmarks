extends Node


var count = 0
var score = 0
var runningTime = 8 # in seconds
var time = 0

var sprite = preload("res://Sprite.tscn")
onready var label = get_node("CanvasLayer/Panel/Label")
onready var label2 = get_node("CanvasLayer/Panel/Label1")
onready var label3 = get_node("CanvasLayer/Panel/Label2")
onready var container = get_node("sprites")

var sprites = []
var active = false

func _ready():
	while count < 2000:
		spawn_sprite()
	set_process(true)
	pass

func _process(delta):
	time = time + delta
	score = score + OS.get_frames_per_second()
	label2.set_text(String(OS.get_frames_per_second()))
	label3.set_text(String(score))
	if(time > 8):
		print("Score: " + String(score))
		get_tree().quit()
	pass
	
func spawn_sprite():
	count = count + 1
	var x = randf() * OS.get_window_size().x #+ OS.get_window_size().x
	var y = randf() * OS.get_window_size().y
	
	var newSprite = sprite.instance()
	newSprite.set_pos(Vector2(x, y))
	container.add_child(newSprite)
	sprites.append(newSprite)
	
	label.text = String(count)
	pass
