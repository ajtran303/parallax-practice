extends Button

@export var level_scene_path: String
@export var thumbnail: Texture2D
@export var label: String

func _ready() -> void:
	$Label.text = label
	$TextureRect.texture = thumbnail

func _on_pressed() -> void:
	get_tree().change_scene_to_file(level_scene_path)
