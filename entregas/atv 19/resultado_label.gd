extends Control

@onready var nome_input = $VBoxContainer/HBoxContainer/LineEdit
@onready var idade_input = $VBoxContainer/HBoxContainer2/LineEdit
@onready var resultado_label = $VBoxContainer/Label
@onready var botao_enviar = $VBoxContainer/Button

func _ready():
	botao_enviar.pressed.connect(_ao_clicar_enviar)

func _ao_clicar_enviar():
	var nome = nome_input.text
	var idade = idade_input.text
	resultado_label.text = "Nome: %s | Idade: %s" % [nome, idade]

func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		print("Clique com botão esquerdo detectado!")
