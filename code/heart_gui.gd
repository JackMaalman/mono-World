extends Panel

@onready var sprite = $"Mono-hearts"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func update(whole: bool):
	if whole: sprite.frame = 0
	else: sprite.frame = 1
