extends CharacterBody2D

var direction = Vector2.LEFT

@onready var ledgeCheckL = $LedgeCheckL
@onready var ledgeCheckR = $LedgeCheckR

func _physics_process(delta):
	get_node("AnimatedSprite2D").play("walk")
	var found_wall = is_on_wall()
	var found_ledge = not ledgeCheckL.is_colliding() or not ledgeCheckR.is_colliding()
	
	if found_wall or found_ledge:
		direction *= -1
	
	velocity = direction * 150
	move_and_slide()
