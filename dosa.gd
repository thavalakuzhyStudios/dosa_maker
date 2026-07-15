extends Sprite2D

const maav_veerti_svg = preload('res://maav_ball.svg')
const maav_spread_svg = preload('res://maav_spread.svg')
const maav_cooked_svg = preload('res://maav_cooked.svg')
const maav_cooked_flipped_svg = preload('res://maav_cooked_flipped.svg')

signal dosa_cooked

func maav_veerti():
	texture = maav_veerti_svg

func maav_spread():
	texture = maav_spread_svg
	$cookTimer.start()

func dosa_oneside_cooked():
	texture = maav_cooked_svg
	dosa_cooked.emit()

func maav_flipped():
	texture = maav_cooked_flipped_svg
