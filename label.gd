extends Label


func _ready() -> void:
	text = str(Globals.money)

func _process(delta: float) -> void:
	text = str(Globals.money)
