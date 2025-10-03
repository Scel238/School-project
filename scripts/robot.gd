extends CharacterBody2D

@export var speed = 400
@export var direction = "Forward"
@export var delta_direction = "Forward"
var number_of_mistakes = 0

signal mistake

func _ready() :
	for i in range(3):
		await get_tree().create_timer(2.0).timeout
		emit_signal("mistake")


func rotate_m(Direction_a,delta_direcrion):
	if direction != delta_direcrion:
		match direction :
			("Forward"):
				rotate(0.25)

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
	rotate_m(direction, delta_direction)
