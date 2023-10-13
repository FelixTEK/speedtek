extends Area2D

func _on_body_entered(body):
	if not body is Player: return
	get_tree().change_scene_to_file("res://courseclear.tscn")
