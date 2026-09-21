extends Node

var num_coins:int = 0
@onready var coin_text:RichTextLabel = $CoinsCollected
@onready var win_text:RichTextLabel = $Winner

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	coin_text.text = "Coins: " + str(num_coins) + "/3"
	if num_coins == 3:
		win_text.modulate = Color("#ffffff")
		get_tree().paused = true
