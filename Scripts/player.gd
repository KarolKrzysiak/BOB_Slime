extends CharacterBody2D


const SPEED = 300.0
var current_dir = "none"

func _physics_process(delta: float) -> void:
	player_movement(delta)
func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		current_dir = "right"
		play_anim(1)
		velocity.x = SPEED
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		play_anim(1)
		current_dir = "left"
		velocity.x = -SPEED
		velocity.y = 0
	else:
		play_anim(0)
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
	
func play_anim(movement):
	var anim = $AnimatedSprite2D

	if current_dir == "right":
		anim.flip_h = true
	elif current_dir == "left":
		anim.flip_h = false 

	if movement == 1:
		anim.play("move")
	else:
		anim.play("idle")
