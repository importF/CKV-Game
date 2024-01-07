extends Control

var Player = preload("res://Scenes/FPCC.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().get_node("DirectionalLight3D").rotation.y = get_global_mouse_position().y * 0.001
	


func _on_button_button_up():
	var instance = Player.instantiate()
	get_parent().add_child(instance)
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	self.queue_free()
	get_parent().get_node("Camera3D").queue_free()
	get_parent().get_node("Label3D").queue_free()
