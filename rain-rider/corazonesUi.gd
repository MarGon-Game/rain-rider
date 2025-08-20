extends Control

@export var heart_full : Texture2D
@export var heart_empty : Texture2D
@onready var hearts_ui = $HeartsUI

func update_hearts(lives: int, max_lives: int):
	for i in range(hearts_ui.get_child_count()):
		var heart = hearts_ui.get_child(i) as TextureRect
		if i < lives:
			heart.texture = heart_full
		else:
			heart.texture = heart_empty
