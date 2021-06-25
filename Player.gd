extends KinematicBody2D

var speed = 100
var jumpForce = 400
var gravity = 400

var vel = Vector2()

onready var playerImage = get_node("player")

func _physics_process(delta):
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
		playerImage.flip_h = true
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		playerImage.flip_h = false
	if Input.is_action_pressed("jump"):
		vel.y -= jumpForce
	
	vel.y += gravity * delta
	
	move_and_slide(vel)
