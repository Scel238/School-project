extends Control

var mistakes = 0
@export var mistake1_visibility = false
@export var mistake2_visibility = false
@export var mistake3_visibility = false

signal end_game()

func _ready() :
	if mistake1_visibility == false:
		print(false)

func _on_character_body_2d_mistake():
	mistakes+=1
	match mistakes:
		1:
			mistake1_visibility = true
			$mistakes/SpriteMistake.visible = mistake1_visibility
		2:
			mistake2_visibility = true
			$mistakes/SpriteMistake2.visible = mistake2_visibility
		3:
			mistake3_visibility = true
			$mistakes/SpriteMistake3.visible = mistake3_visibility
			emit_signal("end_game")
