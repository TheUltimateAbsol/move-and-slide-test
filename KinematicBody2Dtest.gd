extends KinematicBody2D

var first = true;

func _physics_process(delta):
	if first:
		print("moving downward");
		move_and_slide(Vector2(0, 200), Vector2(0, -1))
		first = false;
	else:
		print("moving sideways")
		move_and_slide(Vector2(3, 0), Vector2(0, -1));
	
	print("is_on_floor: ", is_on_floor());
