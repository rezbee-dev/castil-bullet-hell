extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta: float) -> void:
	var direction: Vector2 = Input.get_vector("MOVE_LEFT", "MOVE_RIGHT", "MOVE_UP", "MOVE_DOWN")

	velocity = SPEED * direction
	
	move_and_slide()
