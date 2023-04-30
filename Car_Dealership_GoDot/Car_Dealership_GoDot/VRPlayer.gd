extends ARVROrigin
# Called when the node enters the scene tree for the first time.
func _ready():
	
		# display available interfaces
		var noInterfaces = ARVRServer.get_interface_count()
		var interfaces = ARVRServer.get_interfaces()
		for i in noInterfaces:
				print(interfaces[i])

		# find mobile interfaces
		var arvr_interface = ARVRServer.find_interface("Native mobile");
		
		# initialise the interface
		if (arvr_interface and arvr_interface.initialize()):
				get_viewport().arvr = true
				get_viewport().hdr = false
