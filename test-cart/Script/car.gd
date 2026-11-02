extends CharacterBody2D

const CARSPEED = 400

func _physics_process(delta):
	velocity = Vector2.ZERO

	if Input.is_action_pressed("upKey"):
		velocity.y = -CARSPEED

	if Input.is_action_pressed("downKey"):
		velocity.y = CARSPEED

	if Input.is_action_pressed("leftKey"):
		velocity.x = -CARSPEED

	if Input.is_action_pressed("rightKey"):
		velocity.x = CARSPEED

	move_and_slide()

	#position.x = clamp(position.x, 380, 650)
	#position.y = clamp(position.y, 33, 990)



	if position.x < 380:
		position.x = 380

	elif position.x >645:
		position.x = 645

	if position.y < 33:
		position.y = 33
	
	elif position.y > 990:
		position.y =990
