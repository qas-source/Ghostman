extends Actor


func _physics_process(delta: float) -> void:
	var direction: = Vector2(
		Input.get_action_strength("Right") - Input.get_action_strength("Left"),
		Input.get_action_strength("Down") - Input.get_action_strength("Up")
	)
	velocity = speed * direction
	if direction.x == 0 and direction.y == 0: 
		get_node("IDLE-alive").visible =  true 
	else: 
		get_node("IDLE-alive").visible =  false
	if direction.y == -1: 
		get_node("Up-alive").visible =  true 
	else: 
		get_node("Up-alive").visible =  false
	if direction.x == 1: 
		get_node("Right-alive").visible =  true 
	else: 
		get_node("Right-alive").visible =  false
	if direction.x == -1: 
		get_node("Left-alive").visible =  true 
	else: 
		get_node("Left-alive").visible =  false
	if direction.y == 1: 
		get_node("Down-alive").visible =  true 
	else: 
		get_node("Down-alive").visible =  false
