extends Node

@onready var main  = $"."
@onready var pause_menu = $CanvasLayer

func _ready():
	pause_menu.visible = false


func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		toggle_pause()


func toggle_pause():
	get_tree().paused = !get_tree().paused
	pause_menu.visible = get_tree().paused
