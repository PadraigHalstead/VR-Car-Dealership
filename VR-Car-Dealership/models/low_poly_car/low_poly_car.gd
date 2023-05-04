extends MeshInstance

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var red_color=Color.red
var black_color=Color.black
var material=null
var blue_color=null

func _ready():
	#var material=$car.get_surface_material(0)
	material=$car.get("material/0")
	blue_color=material.albedo_color
	print(material)
	#color_change(1)
	
func color_change(color_request):
	if color_request == 0:
		material.albedo_color = blue_color
	
	elif color_request == 1:
		material.albedo_color = red_color
	
	elif color_request == 2:
		material.albedo_color = black_color

func _process(delta):
	#print("test")
	_rotation(delta)
	
func _rotation(delta) -> void:
	$car.rotate_y(1 * 0.2 * delta)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DefaultArea1_body_entered(body):
	color_change(0)
	pass # Replace with function body.

func _on_RedArea1_body_entered(body):
	color_change(1)
	pass # Replace with function body.

func _on_BlackArea1_body_entered(body):
	color_change(2)
	pass # Replace with function body.
