extends Node

@onready var label: Label = $"../player/CanvasLayer/Label"

var coin = 0

func add_coin():
	coin += 1
	label.text = str(coin) + " coins"
	print(coin)
