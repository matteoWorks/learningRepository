extends Node2D
var bullet_scene = preload("res://scenes/bullets/bullet.tscn")

func _ready() -> void:
	flicker_ligths()
	
func _on_player_shoot(pos: Vector2, dir: Vector2) -> void:
	var bullet = bullet_scene.instantiate() as Area2D
	$Bullets.add_child(bullet)
	bullet.setup(pos, dir)
	
func flicker_ligths():
	var light_tween = get_tree().create_tween().set_parallel()
	light_tween.set_loops()
	light_tween.tween_property($PointLight2D3, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D3, "energy", 2, 1)
	light_tween.tween_property($PointLight2D4, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D4, "energy", 2, 1)
	light_tween.tween_property($PointLight2D5, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D5, "energy", 2, 1)
	light_tween.tween_property($PointLight2D6, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D6, "energy", 2, 1)
	light_tween.tween_property($PointLight2D7, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D7, "energy", 2, 1)
	light_tween.tween_property($PointLight2D8, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D8, "energy", 2, 1)
	light_tween.tween_property($PointLight2D9, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D9, "energy", 2, 1)
	light_tween.tween_property($PointLight2D10, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D10, "energy", 2, 1)
	light_tween.tween_property($PointLight2D11, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D11, "energy", 2, 1)
	light_tween.tween_property($PointLight2D12, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D12, "energy", 2, 1)
	light_tween.tween_property($PointLight2D13, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D13, "energy", 2, 1)
	light_tween.tween_property($PointLight2D14, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D14, "energy", 2, 1)
	light_tween.tween_property($PointLight2D15, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D15, "energy", 2, 1)
	light_tween.tween_property($PointLight2D16, "energy", 1, 1.5)
	light_tween.tween_property($PointLight2D16, "energy", 2, 1)
