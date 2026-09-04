extends Label

func _process(delta: float) -> void:
	if !Fishes.yourFished.is_empty():
		var output = ""
		for i in Fishes.yourFished:
			output += "%s: %s
			" % [i, Fishes.yourFished[i]]
		text = output
	
	else:
		text = "empty tank!"
