extends Control 
var start_time: float = 0.0

func _ready() -> void:
	start_time = Time.get_ticks_msec() / 1000.0
	process_mode = Node.PROCESS_MODE_ALWAYS

func _process(delta: float) -> void:
	var elapsed: float = Time.get_ticks_msec() / 1000.0 - start_time
	var minutes: int = int(elapsed / 60)
	var seconds: int = int(elapsed) % 60
	var tenths: int = int((elapsed - int(elapsed)) * 100)

	var formatted_time: String = "%02d:%02d:%02d" % [minutes, seconds, tenths]
	$TimerLabel.text = formatted_time
