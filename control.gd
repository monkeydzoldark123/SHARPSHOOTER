extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Engine.max_fps = 120
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/LV/lv_l_1.tscn")
