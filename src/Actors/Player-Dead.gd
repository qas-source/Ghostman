extends Actor

export (String, FILE) var next_scene

func _physics_process(delta: float) -> void:
	var run: = Input.get_action_strength("Run")
	var direction: = Vector2(
		Input.get_action_strength("Right") - Input.get_action_strength("Left"),
		Input.get_action_strength("Down") - Input.get_action_strength("Up")
	)
	velocity = speed * direction + speed * direction*run
	if direction.x == 0 and direction.y == 0: 
		get_node("IDLE-dead").visible =  true 
	else: 
		get_node("IDLE-dead").visible =  false
	if direction.y == -1: 
		get_node("Up-dead").visible =  true 
	else: 
		get_node("Up-dead").visible =  false
	if direction.x == 1: 
		get_node("Right-dead").visible =  true 
	else: 
		get_node("Right-dead").visible =  false
	if direction.x == -1: 
		get_node("Left-dead").visible =  true 
	else: 
		get_node("Left-dead").visible =  false
	if direction.y == 1: 
		get_node("Down-dead").visible =  true 
	else: 
		get_node("Down-dead").visible =  false
	get_node("Light2D").set_texture_scale(1/(run+1))

func _get_configuration_warning() -> String:
	return "The next scene property can't be emplty" if not next_scene else ""

func _die(body):
	get_tree().reload_current_scene()
	print("contact")
	#queue_free()
