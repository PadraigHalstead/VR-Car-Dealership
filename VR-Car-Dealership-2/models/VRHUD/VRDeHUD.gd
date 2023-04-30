extends Control

export var enabled = true;

var format = "%10.3f"	#display up to 10 digits, with 3 digits behind comma

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
