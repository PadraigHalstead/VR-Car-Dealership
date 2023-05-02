extends Control

export var enabled = true;

var format = "%10.3f"	#display up to 10 digits, with 3 digits behind comma
var car = "none"
var color = "none"

func _ready():
	if (enabled):
		visible = true
	else:
		visible = false

func displayHUD(transform):
	var car = "nissan"
	var colour = "red"
	$BasisLabel.set_text("Selected Car: " + car)
	$BasisLabel.set_text("Selected Colour:" + colour)

func setStatus(statusText):
	$Status.set_text(statusText)




func _on_DefaultArea_body_entered(body):
	$selected_car.set_text("Car: Ford")
	$selected_color.set_text("Colour: Blue")
	car = "Ford"
	color = "Blue"
	pass # Replace with function body.


func _on_RedArea_body_entered(body):
	$selected_car.set_text("Car: Ford")
	$selected_color.set_text("Colour: Red")
	car = "Ford"
	color = "Red"
	pass # Replace with function body.


func _on_BlackArea_body_entered(body):
	$selected_car.set_text("Car: Ford")
	$selected_color.set_text("Colour: Black")
	car = "Ford"
	color = "Black"
	pass # Replace with function body.
	
func _on_DefaultArea1_body_entered(body):
	$selected_car.set_text("Car: Sport")
	$selected_color.set_text("Colour: Blue")
	car = "Ford"
	color = "Blue"
	pass # Replace with function body.


func _on_RedArea1_body_entered(body):
	$selected_car.set_text("Car: Sport")
	$selected_color.set_text("Colour: Red")
	car = "Ford"
	color = "Red"
	pass # Replace with function body.


func _on_BlackArea1_body_entered(body):
	$selected_car.set_text("Car: Sport")
	$selected_color.set_text("Colour: Black")
	car = "Ford"
	color = "Black"
	pass # Replace with function body.
	
func _on_DefaultArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: White")
	car = "Ford"
	color = "Blue"
	pass # Replace with function body.


func _on_RedArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: Red")
	car = "Ford"
	color = "Red"
	pass # Replace with function body.


func _on_BlackArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: Black")
	car = "Ford"
	color = "Black"
	pass # Replace with function body.
