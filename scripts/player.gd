extends CharacterBody2D


const SPEED = 300.0
@export var wobble_speed: float = 5.0
@export var wobble_intensity: float = 0.5
@onready var sprite: Sprite2D = $Sprite

func _process(delta) -> void:
	_wobble()

func _physics_process(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("MOVE_LEFT", "MOVE_RIGHT", "MOVE_UP", "MOVE_DOWN")

	velocity = SPEED * direction
	
	move_and_slide()

func _wobble():
	if velocity.length() == 0:
		sprite.rotation_degrees = 0
		print("i'm not moving!!")
	else:
		sprite.rotation_degrees = rad_to_deg(sin(Time.get_ticks_msec() * 0.001 * wobble_speed) * wobble_intensity)
		print("i'm wobbling!")
