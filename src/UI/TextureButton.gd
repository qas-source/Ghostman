tool
extends TextureButton


export(String, FILE) var next_scene_path: = ""


func _get_configuration_warning() -> String:
	return "next_scene_path must be set for the button to work" if next_scene_path == "" else ""


func _on_TextureButton_button_down():
	get_tree().change_scene(next_scene_path)
