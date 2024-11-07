extends CharacterBody2D

@export var speed : float = 250

func _ready():
	var screen_size = get_viewport().get_visible_rect().size
	position = screen_size/2

func _process(_delta):
	
	var temp_speed = speed*1
	velocity = Vector2(1,1)
	
	if Input.is_action_pressed("sprint"):
		temp_speed = speed*2.5
		
	if Input.is_action_pressed("up"):
		velocity.y = -temp_speed
	elif Input.is_action_pressed("down"):
		velocity.y = temp_speed
	if Input.is_action_pressed("left"):
		velocity.x = -temp_speed
	elif Input.is_action_pressed("right"):
		velocity.x = temp_speed
		
	move_and_slide()
	pass
