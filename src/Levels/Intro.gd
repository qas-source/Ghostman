extends Node2D

export var next_scene: PackedScene

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

func _get_configuration_warning() -> String:
	return "The next scene property can't be emplty" if not next_scene else ""

func _physics_process(delta):
	if has_node("Poison") == false:
		anim_player.play("die")
		yield(anim_player, "animation_finished")
		get_tree().change_scene_to(next_scene)
