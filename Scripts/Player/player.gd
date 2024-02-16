extends CharacterBody2D

@export var speed : float = 600;

func _accelerate():
	#speed+=0.1;
	pass;

func _decelerate():
	#speed -=0.1;
	pass;

func _get_input(delta):
	var input_direction = Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	velocity = input_direction * speed;
	if input_direction != Vector2.ZERO:
		$TestLabel.text = "Input is on";
		_accelerate();
	else:
		$TestLabel.text = "Input is off";
		_decelerate();


func _physics_process(delta):
	_get_input(delta)
	move_and_slide();
	

