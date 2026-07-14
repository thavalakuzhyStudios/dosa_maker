extends TextureButton

signal stove_press
signal stove_igni_press

const stove_pan_fire_svg = preload('res://stove_pan_fire.svg')

func _on_button_up() -> void:
	stove_press.emit()

func _on_ignition_button_up() -> void:
	texture_normal = stove_pan_fire_svg
	stove_igni_press.emit()
