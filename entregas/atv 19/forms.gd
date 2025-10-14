extends Control


func _on_button_pressed() -> void:
	$VBoxContainer/Label.text = "Nome:"+ $VBoxContainer/HBoxContainer/LineNome.text +"\nIdade:"+ $VBoxContainer/HBoxContainer2/LabelAge/LineAge.text
	pass # Replace with function body.
