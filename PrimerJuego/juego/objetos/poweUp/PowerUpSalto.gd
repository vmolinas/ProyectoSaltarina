extends "res://juego/objetos/poweUp/PowerUpBase.gd"

func aplicar_power_up(body):
	body.cambiar_fuerza_salto()
