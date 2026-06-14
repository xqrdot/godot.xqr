extends Control


func _on_resume_pressed() -> void:
	get_tree().paused = false
	visible = false

func _on_quit_pressed() -> void:
	# TODO: save, then quit
	get_tree().quit()
