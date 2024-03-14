extends Sprite2D



func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			print("aaaaa")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed( 1 ): # Left click
		if get_rect().has_point(to_local(get_global_mouse_position())):
			Sprite2D.position = get_global_mouse_position()
	pass
