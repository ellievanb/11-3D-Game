extends Area

signal CoinCollected

func _physics_process(delta):
	rotate_y(deg2rad(3))

func _on_GoldCoin_body_entered(body):
	if body.name == "FPSCharacter":
		$Timer.start()

func _on_Timer_timeout():
	emit_signal("CoinCollected")
	queue_free()