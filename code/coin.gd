extends Area2D

@onready var gamemanager: Node = %gamemanager

func _on_body_entered(body: Node2D) -> void:
	print("+1 coin")
	gamemanager.add_coin()
	queue_free()
