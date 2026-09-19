extends Node2D

@onready var node_principale = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Engine.max_fps = 120



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("start"):
		print("pause appuyer")
		node_principale.get_tree().paused = true
	if Input.is_action_just_pressed("fermer"):
		print("pause enlever")
		node_principale.get_tree().paused = false
		
	
		
		
	
	
