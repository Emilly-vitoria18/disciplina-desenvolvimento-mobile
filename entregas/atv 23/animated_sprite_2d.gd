extends Node2D

@onready var anim_sprite = $AnimatedSprite2D
@onready var button = $Button

var is_playing = false

func _ready():
	button.text = "Executar animação"
	button.pressed.connect(_on_button_pressed)
	anim_sprite.animation = "andar"
	anim_sprite.playing = false

func _on_button_pressed():
	_toggle_animation()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"): # tecla Espaço
		_toggle_animation()

func _toggle_animation():
	is_playing = !is_playing
	
	if is_playing:
		anim_sprite.play()
		button.text = "Parar animação"
	else:
		anim_sprite.stop()
		button.text = "Executar animação"
