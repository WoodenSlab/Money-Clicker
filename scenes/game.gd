extends Node2D

var money := 0
var money_gain:=1

@onready var coin_click = $"Click UI/BoxContainer/TextureRect/coin_click"
@onready var money_count = $"Click UI/MoneyCount"

func _process(_delta: float) -> void:
	if $Button.button_pressed:
		double_click()

func double_click():
	money_gain = 2


func _on_coin_click_pressed() -> void:
	money += money_gain
	money_count.text = str(money)
