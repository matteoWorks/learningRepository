extends Control

func _ready() -> void:
	$Label2.text = "High Score: " + str(Global.score)
	$Label4.text = Global.score_message
	Global.score_message = "you got hit, try again."

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("confirm"):
		get_tree().change_scene_to_file("res://scene/game.tscn")
