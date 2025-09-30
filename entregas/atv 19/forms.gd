extends Control


func _on_button_pressed() -> void:
	$VBoxContainer/Label.text = "nome:"+ $VBoxContainer/HBoxContainer/LineNome.text +"\n idade:"+ $VBoxContainer/HBoxContainer2/LabelAge/LineAge.text
	pass # Replace with function body.
