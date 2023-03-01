extends AudioStreamPlayer2D

var sfx_to_play: String = ""

func _ready() -> void:
	stream = load(sfx_to_play)
	play()
	
	
func on_timer_timeout():
	queue_free()
