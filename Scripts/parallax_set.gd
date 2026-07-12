extends Node2D

@export var layer_1: Texture2D
@export var layer_2: Texture2D
@export var layer_3: Texture2D
@export var layer_4: Texture2D
@export var layer_5: Texture2D
@export var layer_6: Texture2D


func _ready() -> void:
	$Layer1/Sprite2D.texture = layer_1
	$Layer2/Sprite2D.texture = layer_2
	$Layer3/Sprite2D.texture = layer_3
	$Layer4/Sprite2D.texture = layer_4
	$Layer5/Sprite2D.texture = layer_5
	$Layer6/Sprite2D.texture = layer_6


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
