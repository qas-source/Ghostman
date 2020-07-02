extends Node2D

export var next_scene: PackedScene

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

func _get_configuration_warning() -> String:
	return "The next scene property can't be emplty" if not next_scene else ""

# warning-ignore:unused_argument
func _physics_process(delta):
	PlayerData.score += 1
	if has_node("Key") == false and has_node("Key2") == false and has_node("Key3") == false:
		PlayerData.level += 1
		anim_player.play("fade")
		yield(anim_player, "animation_finished")
# warning-ignore:return_value_discarded
		get_tree().change_scene_to(next_scene)
