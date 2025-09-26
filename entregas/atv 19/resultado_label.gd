extends Control

var nome_input
var idade_input
var resultado_label
var mostrar_button

func _ready():
	# Pega os nós da interface
	nome_input = $VBoxContainer/HBoxContainer/NomeLineEdit
	idade_input = $VBoxContainer/HBoxContainer2/IdadeLineEdit
	resultado_label = $VBoxContainer/ResultadoLabel
	mostrar_button = $VBoxContainer/MostrarButton

	# Conecta o botão à função
	mostrar_button.pressed.connect(_on_mostrar_button_pressed)

func _on_mostrar_button_pressed():
	var nome = nome_input.text
	var idade = idade_input.text

	if nome != "" and idade != "":
		resultado_label.text = "Seu nome é " + nome + " e sua idade é " + idade + "."
	else:
		resultado_label.text = "Por favor, preencha todos os campos!"
