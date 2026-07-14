extends TextureButton

signal patram_press

func _on_button_up() -> void:
	patram_press.emit()
