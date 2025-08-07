extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if input.is_action_just_pressed("ui_accept")
