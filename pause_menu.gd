extends Control


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	visible = false


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		toggle_pause()


func _on_resume_pressed() -> void:
	toggle_pause()


func _on_quit_pressed() -> void:
	# TODO: save, then quit
	get_tree().quit()


func toggle_pause():
	print(get_tree().get_class())
	get_tree().paused = !get_tree().paused
	visible = get_tree().paused
