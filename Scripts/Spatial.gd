extends Spatial

export var lives = 3

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func _input(event):
	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	if event.is_action_pressed("shoot"):
		if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
func decrease_lives():
 lives -= 1
 find_node("Lives").update_lives()
 if lives <= 0:
	  get_tree().change_scene("res://Scenes/Game Over!.tscn")