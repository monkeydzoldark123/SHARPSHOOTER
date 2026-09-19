extends Area2D

@export var damage := 20
@export var damage_delay = 0.5
var player_touching = false
var damage_timer = 0.0

func _process(delta):
	if player_touching:
		damage_timer -= delta
		if damage_timer <= 0:
			damage_player()
			damage_timer = damage_delay

func  damage_player():
	HealthManager.damage_player(damage)


func _on_body_entered(body: Node2D):
	if body.is_in_group("player"):
		player_touching = true
		damage_timer = 0.0
		


func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		player_touching = false
