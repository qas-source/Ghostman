extends Node2D

export var next_scene: PackedScene

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

func _get_configuration_warning() -> String:
	return "The next scene property can't be emplty" if not next_scene else ""

func _physics_process(delta):
	PlayerData.score += 1
	if has_node("Key") == false and has_node("Key2") == false and has_node("Key3") == false and has_node("Key3") == false and has_node("Key4") == false and has_node("Key5") == false and has_node("Key6") == false and has_node("Key7") == false and has_node("Key8") == false and has_node("Key9") == false and has_node("Key10") == false and has_node("Key11") == false and has_node("Key12") == false and has_node("Key13") == false:
		anim_player.play("Fade in")
		PlayerData.level += 1
		yield(anim_player, "animation_finished")
		get_tree().change_scene_to(next_scene)


