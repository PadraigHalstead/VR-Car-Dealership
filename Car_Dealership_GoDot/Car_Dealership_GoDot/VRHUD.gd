extends Control

export var enabled = true;

const LowPolyCar = preload("res://low_poly_car.gd")
var car = LowPolyCar.new()
var carColor = car.exportedColor
var carName = car.exportedCarName

var format = "%10.3f"	#display up to 10 digits, with 3 digits behind comma

func _ready():
	if (enabled):
		visible = true
	else:
		visible = false

func displayHUD(car):
	$BasisLabel.set_text("Selected Car: " + carName)
	$BasisLabel.set_text("Selected Colour:" + carColor)
