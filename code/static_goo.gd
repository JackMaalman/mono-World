extends Sprite2D

signal hit

func _on_hitbox_body_entered(body: Node2D) -> void:
	hit.emit()
