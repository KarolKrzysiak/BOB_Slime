extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta: float) -> void:
	player_movement(delta)
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		velocity.x = 0
	else:
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
