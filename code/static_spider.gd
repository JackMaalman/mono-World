extends Node2D

const speed = 60

var direction = 1

@onready var ray_left: RayCast2D = $ray_left
@onready var ray_right: RayCast2D = $ray_right
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_down_left: RayCast2D = $ray_down_left
@onready var ray_down_right: RayCast2D = $ray_down_right


func _process(delta: float) -> void:
	if ray_left.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_right.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	if not ray_down_left.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if not ray_down_right.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	position.x += direction * speed * delta 
