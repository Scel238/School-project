extends Node2D


func _on_button_pressed_start() -> void:
	get_tree().change_scene_to_file("res://scenes/test_level.tscn")


func _on_button_2_pressed_end() -> void:
	get_tree().quit()
