extends Button
var time = true

func _process(delta: float) -> void:
	$ProgressBar.value = $Timer.time_left * 100
	

func _pressed() -> void:
	if time:
		Globals.money += 1
		$Timer.start()
		time = false
	


func _on_timer_timeout() -> void:
	if !time:
		time = true
	if time:
		$Timer.stop()
