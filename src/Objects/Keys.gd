extends Area2D

func _on_Key_body_entered(body):
	queue_free()

var a = 0

func _ready():
	a = randi()%4
	if a == 0:
		get_node("Key").visible =  true
	if a == 1:
		get_node("Key1").visible =  true
	if a == 2:
		get_node("Key2").visible =  true
	if a == 3:
		get_node("Key3").visible =  true
