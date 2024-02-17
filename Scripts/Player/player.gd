extends CharacterBody2D

@export var speed = 600;
var acceleration: = 10;
var friction = 400;

func _get_input(delta):
	var input_direction =Input.get_vector("ui_left", "ui_right","ui_up","ui_down")
	
	velocity = velocity.move_toward(speed * input_direction, acceleration);
	
	if input_direction != Vector2.ZERO:
		$TestLabel.text = "Input is on";
		
	else:
		$TestLabel.text = "Input is off";
	

func _physics_process(delta):
	_get_input(delta)
	move_and_slide();
	
	
	
func _on_area_2d_body_entered(body):
	if body.is_in_group("sheep"):
		get_tree().reload_current_scene();
