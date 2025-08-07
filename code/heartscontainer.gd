extends HBoxContainer

@onready var HeartGuiClass = preload("res://scenes/heartGui.tscn")


func setMaxHearts(max: int):
	for i in range(max):
		var heart = HeartGuiClass.instantiate()
		add_child(heart)

func updatehearts(currenthealth: int):
	var hearts = get_children()
	
	for i in range(currenthealth):
		hearts[i].update(true)
	
	for i in range(currenthealth, hearts.size()):
		hearts[i].update(false)
