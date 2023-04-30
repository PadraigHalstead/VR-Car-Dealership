extends KinematicBody

export var speed = 10 # how fast the player moves
export var acceleration = 5 # how quickly the player accelerates
export var gravity = 0.98 # the gravity constant (for earth)
export var jump_power = 30 # how high the player can jump
export var mouse_sensitivity = 0.3 # the higher the value, the more sensitive the mouse movements

onready var head = $Head
onready var camera = $Head/Camera

var velocity = Vector3()
var camera_x_rotation = 0 # keeps track of how much we move the camera along the x-axis (so to not overturn)

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _input(event):
	if event is InputEventMouseMotion:
		head.rotate_y(deg2rad(-event.relative.x * mouse_sensitivity))
		
		# only move camera up or down if it is within the 90 degree boundary (so to not overturn)
		var x_delta = event.relative.y * mouse_sensitivity
		if camera_x_rotation + x_delta > -90 and camera_x_rotation + x_delta < 90:
			camera.rotate_x(deg2rad(-x_delta))
			camera_x_rotation += x_delta
		
func _physics_process(delta):
	var head_basis = head.get_global_transform().basis
	
	# basic forward/backward/left/right movements (based on keyboard actions)
	var direction = Vector3()
	if Input.is_action_pressed("move_forward"):
		direction -= head_basis.z
	elif Input.is_action_pressed("move_backward"):
		direction += head_basis.z
		
	if Input.is_action_pressed("move_left"):
		direction -= head_basis.x
	elif Input.is_action_pressed("move_right"):
		direction += head_basis.x
	direction = direction.normalized()
	velocity = velocity.linear_interpolate(direction * speed, acceleration * delta)
	
	# gravity
	velocity.y -= gravity
	
	# jump
	if Input.is_action_just_pressed("move_jump") and is_on_floor():
		velocity.y += jump_power 
	
	velocity = move_and_slide(velocity, Vector3.UP)
