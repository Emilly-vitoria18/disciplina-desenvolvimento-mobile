extends Control


func _on_button_pressed() -> void:
	$ProgressBar.value +=10
pass 


func _on_progress_bar_value_changed(value: float) -> void:
	if value >= $ProgressBar.max_value:
		$ProgressBar.value = 0
		$CPUParticles2D.emitting = true
		



pass # Replace with function body.
