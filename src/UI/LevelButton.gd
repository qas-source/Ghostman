extends Button

export var next_scene: PackedScene

export var Level_number: = 0

onready var Text: = String(Level_number)

func _ready():
	get_node(".").text = Text
	if PlayerData.level <= Level_number:
		get_node(".").disabled = false
		
func _next():
	get_tree().change_scene_to(next_scene)
