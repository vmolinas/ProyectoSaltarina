extends Area2D

export var velocidad = 400.0

var mi_pos = Vector2.ZERO

onready var animacion = $AnimacionSprite

func _process(delta):
	global_position.y += velocidad * delta

func crear(pos):
	mi_pos = pos

func _ready():
	global_position= mi_pos
	animacion.play("moverse")

func _on_VisibilityNotifier2D_screen_exited():
	destruirse()

func _on_body_entered(body):
	if body.is_in_group("jugador"):
		body.respawn()
	destruirse()

func destruirse():
	queue_free()
