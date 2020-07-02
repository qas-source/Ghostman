extends Node2D

onready var nav_2d : Navigation2D = $Navigation2D
onready var enemy : Area2D = $Follower
onready var player : KinematicBody2D = $"Player-Dead"
onready var line_2d : Line2D = $Line2D


export var next_scene: PackedScene

onready var anim_player: AnimationPlayer = get_node("AnimationPlayer")

# warning-ignore:unused_argument
func _process(delta) -> void:
	var new_path : = nav_2d.get_simple_path(enemy.global_position, player.global_position)
	print("Player:", player.global_position, "Enemy:", enemy.global_position)
	enemy.path = new_path
	line_2d.points = new_path

func _get_configuration_warning() -> String:
	return "The next scene property can't be emplty" if not next_scene else ""

# warning-ignore:unused_argument
func _physics_process(delta):
	PlayerData.score += 1
	if has_node("Key") == false and has_node("Key2") == false and has_node("Key3") == false and has_node("Key3") == false and has_node("Key4") == false and has_node("Key5") == false and has_node("Key6") == false and has_node("Key7") == false and has_node("Key8") == false and has_node("Key9") == false and has_node("Key10") == false and has_node("Key11") == false and has_node("Key12") == false and has_node("Key13") == false:
		anim_player.play("Fade in")
		PlayerData.level += 1
		yield(anim_player, "animation_finished")
# warning-ignore:return_value_discarded
		get_tree().change_scene_to(next_scene)


