extends Control

@onready var nome_input = $nome_box/nome_input
@onready var idade_input = $idade_box/idade_input
@onready var mensagem_label = $mensagem_label
@onready var botao_confirmar = $botao_confirmar

func _ready():
	botao_confirmar.text = "Confirmar"
	botao_confirmar.pressed.connect(_ao_confirmar)

func _ao_confirmar():
	var nome = nome_input.text
	var idade = idade_input.text
	mensagem_label.text = "Seu nome é \"" + nome + "\" e sua idade é '" + idade + "'."
