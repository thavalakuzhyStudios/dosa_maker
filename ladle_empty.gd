extends TextureButton

signal empty_ladle_press

func _on_button_up() -> void:
	empty_ladle_press.emit()
	hide()
