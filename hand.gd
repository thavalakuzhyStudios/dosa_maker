extends Node2D

const arm_ladle_svg = preload('res://right_arm_ladle.svg')
const arm_ladle_maav_svg = preload('res://right_arm_ladle_maav.svg')

func ladle_picked():
	$Sprite2D.texture = arm_ladle_svg
	
func maav_picked():
	$Sprite2D.texture = arm_ladle_maav_svg
