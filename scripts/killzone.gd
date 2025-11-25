extends Area2D

@onready var timer: Timer = $Timer

# player falls
func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	timer.start()

# restart scene
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
