extends Label
var Coins = 0

func _ready():
	text = String(Coins)
	



func _on_GoldCoin_CoinCollected():
	Coins = Coins + 1
	_ready()
