extends Area2D

func _on_Poison_body_entered(body):
	queue_free()
