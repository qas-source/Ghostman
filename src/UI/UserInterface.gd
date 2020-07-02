extends Control

onready var score: Label = get_node("Label")
onready var scene_tree: = get_tree()
onready var pause_overlay: ColorRect = get_node("Pause Overlay")

var paused: = false setget set_paused

func _ready() -> void:
	PlayerData.connect("score_updated", self, "update_interface")
	update_interface()

func _unhandled_input(event) -> void:
	if event.is_action_pressed("pause"):
		self.paused = not paused
		scene_tree.set_input_as_handled()

func update_interface() -> void:
	score.text = "Score: %s" % (1000001 - PlayerData.score)

func set_paused(value: bool) -> void:
	paused = value
	scene_tree.paused = value
	pause_overlay.visible = value
