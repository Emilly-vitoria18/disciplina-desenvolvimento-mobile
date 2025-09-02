extends Node

# Variáveis de XP
var current_xp: int = 0
var max_xp: int = 100
var level: int = 1

func _ready() -> void:
	# Configura a barra de progresso circular
	$TextureProgressBar.min_value = 0
	$TextureProgressBar.max_value = max_xp
	$TextureProgressBar.value = current_xp
	$Label.text = "Nível: %d" % level

func _on_timer_timeout() -> void:
	# Ganha XP
	current_xp += 5  # Pode ajustar o ganho de XP

	# Atualiza a barra de progresso
	$TextureProgressBar.value = current_xp

	# Se atingir o máximo de XP
	if current_xp >= max_xp:
		# Sobe de nível
		level += 1
		# Calcula novo máximo de XP (aumenta 10%)
		max_xp = int(max_xp * 1.1)
		# Reseta XP atual
		current_xp = 0

		# Atualiza a barra de progresso
		$TextureProgressBar.max_value = max_xp
		$TextureProgressBar.value = current_xp

		# Atualiza o texto do nível
		$Label.text = "Nível: %d" % level
