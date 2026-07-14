extends Node2D

var ladle_coll_flag = 0
var maav_coll_flag = 0

const arm_ladle_svg = preload('res://right_arm_ladle.svg')
const arm_ladle_maav_svg = preload('res://right_arm_ladle_maav.svg')

func ladle_collected():
	ladle_coll_flag = 1

func maav_collected():
	maav_coll_flag = 1

func _process(_delta):
	if ladle_coll_flag == 1:
		$Sprite2D.texture = arm_ladle_svg
		if maav_coll_flag == 1:
			$Sprite2D.texture = arm_ladle_maav_svg
