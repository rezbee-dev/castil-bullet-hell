extends Node2D

@onready var left_laser = $"Right eye"
@onready var right_laser = $"Left eye"


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if Input.is_action_pressed("LEFT_CLICK"):
		activate_laser()
	if Input.is_action_just_released("LEFT_CLICK"):
		hide()

func activate_laser():
	show()
	var cursor_position = get_global_mouse_position()
	left_laser.look_at(cursor_position)
	right_laser.look_at(cursor_position)
