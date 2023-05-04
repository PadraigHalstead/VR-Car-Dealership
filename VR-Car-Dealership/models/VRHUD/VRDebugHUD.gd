extends Control

export var enabled = true;

var format = "%10.3f"	#display up to 10 digits, with 3 digits behind comma
var car = ""
var color = ""

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
	car = "Sport"
	color = "Blue"
	pass # Replace with function body.


func _on_RedArea1_body_entered(body):
	$selected_car.set_text("Car: Sport")
	$selected_color.set_text("Colour: Red")
	car = "Sport"
	color = "Red"
	pass # Replace with function body.


func _on_BlackArea1_body_entered(body):
	$selected_car.set_text("Car: Sport")
	$selected_color.set_text("Colour: Black")
	car = "Sport"
	color = "Black"
	pass # Replace with function body.
	
func _on_DefaultArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: White")
	car = "Suzuki"
	color = "White"
	pass # Replace with function body.


func _on_RedArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: Red")
	car = "Suzuki"
	color = "Red"
	pass # Replace with function body.


func _on_BlackArea2_body_entered(body):
	$selected_car.set_text("Car: Suzuki")
	$selected_color.set_text("Colour: Black")
	car = "Suzuki"
	color = "Black"
	pass # Replace with function body.


func _on_BuyArea_body_entered(body):
	var statusText = ""
	if(car != "" || color != ""):
		statusText = color + " " + car + " purchased" 
	else:
		statusText = "Select a car to purchase"
	$PurchaseNotification.set_text(statusText)
	yield(get_tree().create_timer(4.0), "timeout")
	$PurchaseNotification.set_text("")
