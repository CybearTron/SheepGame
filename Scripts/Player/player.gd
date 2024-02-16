extends CharacterBody2D

@export var speed = 50000;

func _get_input(delta):
	velocity = Input.get_vector("ui_left", "ui_right","ui_up","ui_down");
	velocity *= delta * speed;
	


func _physics_process(delta):
	_get_input(delta)
	move_and_slide();
