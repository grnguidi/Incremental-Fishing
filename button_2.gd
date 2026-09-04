extends Button

func _pressed() -> void:
	
	for i in Fishes.yourFished.size():
		for j in Fishes.yourFished[Fishes.yourFished.keys()[i]]:
			Globals.money += Fishes.FISHESPOOL[Fishes.yourFished.keys()[i]].price
	
	Fishes.yourFished.clear()
		
