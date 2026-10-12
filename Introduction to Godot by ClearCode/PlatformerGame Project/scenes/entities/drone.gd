extends CharacterBody2D

var direction: Vector2
var speed := 800
var player: CharacterBody2D
var health := 3
var is_exploding: bool = false

func _ready() -> void:
	print(get_tree().get_nodes_in_group('Drones'))

func _on_detection_area_body_entered(player_body: CharacterBody2D) -> void:
	player = player_body
	
func _on_detection_area_body_exited(_player_body: CharacterBody2D) -> void:
	player = null
	
func _on_collision_area_body_entered(_player_body: CharacterBody2D) -> void:
	explode()
	
func _physics_process(delta: float) -> void:
	if player:
		var dir = (player.position - position).normalized()
		velocity = dir * speed * delta
		move_and_slide()

func hit():
	health -= 1
	if health <= 0:
		is_exploding = true
		explode()
	var tween = get_tree().create_tween()
	tween.tween_property($AnimatedSprite2D.material, 'shader_parameter/Progress', 0.2, 0.3)
	tween.tween_property($AnimatedSprite2D.material, 'shader_parameter/Progress', 1, 1)
		
func explode():
	$AudioStreamPlayer2D.play()
	speed = 0
	$AnimatedSprite2D.hide()
	$ExplosionSprite.show()
	$AnimationPlayer.play("explode")
	await $AnimationPlayer.animation_finished
	queue_free()
	
func chain_reaction():
	for drone in get_tree().get_nodes_in_group('Drones'):
		if position.distance_to(drone.position) < 30:
			if not is_exploding:
				drone.explode()
	
