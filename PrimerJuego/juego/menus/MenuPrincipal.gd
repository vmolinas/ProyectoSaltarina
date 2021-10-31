extends Control

export var level_inicial = ""

func _ready():
	DatosPlayer.reset()

func _on_BotonIniciar_pressed():
	MusicaGlobal.replay()
# warning-ignore:return_value_discarded
	get_tree().change_scene(level_inicial)
