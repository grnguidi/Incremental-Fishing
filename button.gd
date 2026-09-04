extends Button
var time = true

func _process(delta: float) -> void:
	$ProgressBar.value = $Timer.time_left * 100
	

func _pressed() -> void:
	if time:
		#Globals.money += 1
		$Timer.start()
		time = false
		
		
		var fishInline = Fishes.FISHESPOOL.keys().pick_random()
		if !Fishes.yourFished.has(fishInline):
			Fishes.yourFished[fishInline] = 1
		else:
			Fishes.yourFished[fishInline] += 1
			


func _on_timer_timeout() -> void:
	if !time:
		time = true
	if time:
		$Timer.stop()
