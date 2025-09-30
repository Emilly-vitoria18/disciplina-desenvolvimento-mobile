extends Control

@onready var name_input = $VBoxContainer/HBoxContainer/LineEdit
@onready var age_input = $VBoxContainer/HBoxContainer2/LineEdit
@onready var result_label = $VBoxContainer/result_label
@onready var submit_button = $VBoxContainer/submit_button

func _ready():
	submit_button.pressed.connect(_on_submit_pressed)

func _on_submit_pressed():
	var name = name_input.text
	var age = age_input.text
	result_label.text = "Seu nome é %s e sua idade é %s" % [name, age]

 
