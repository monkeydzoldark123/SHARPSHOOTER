extends CharacterBody2D

@export var speed : float = 20.0
@export var point_a = Marker2D
@export var point_b = Marker2D 
@onready var animation = $AnimatedSprite2D
var target = Marker2D
@export var max_health: int = 30
@onready var health_bar = $hp
var health: int


func _ready():
	target = point_a
	health = max_health
	health_bar.max_value = max_health
	health_bar.value = health
	
func take_damage(amount:int ):
	
	health -= amount
	health_bar.value = health
	if health <= 0:
		die()
		
func  die():
	HealthManager.score += 5
	print("score :",HealthManager.score)
	
	queue_free()



func  _physics_process(delta):
	var direction = global_position.direction_to(target.global_position)
	velocity = direction*speed
	animation.play("Walk")
	animation.flip_h = direction.x < 0
	
	move_and_slide()
	
	if global_position.distance_to(target.global_position) < 5:
		if target == point_a:
			target = point_b
		else :
			target= point_a


func _on_hibox_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
