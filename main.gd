extends Node2D

var flag_stove_on = 0
var flag_maav_picked = 0
var flag_maav_veerti = 0
var flag_dosa_cooked = 0
var flag_dosa_flipped = 0
var count_dosa = 0

func ladle_picked_up():
	$hand.ladle_picked()

func maav_picked_up():
	$hand.maav_picked()
	flag_maav_picked = 1

func stove_turned_on():	
	flag_stove_on = 1

func stove_pressed():
	if flag_maav_picked == 1 and flag_stove_on == 1 and flag_maav_veerti == 0:
		$dosa.show()
		$dosa.maav_veerti()
		$hand.ladle_picked()
		flag_maav_veerti = 1
	elif flag_maav_picked == 1 and flag_stove_on == 1 and flag_maav_veerti == 1 and flag_dosa_cooked == 0:
		$dosa.maav_spread()
	elif flag_maav_picked == 1 and flag_stove_on == 1 and flag_maav_veerti == 1 and flag_dosa_cooked == 1 and flag_dosa_flipped == 0:
		$dosa.maav_flipped()
		flag_dosa_flipped = 1
	elif flag_dosa_flipped == 1:
		$cooked_dosa.show()
		$dosa.hide()
		flag_maav_veerti = 0
		flag_dosa_cooked = 0
		flag_dosa_flipped = 0
		count_dosa += 1
		$hud/dosa_counter.text = str(count_dosa)
		print('Dosa cooked = ')
		print(count_dosa)

func dosa_cooked():
	flag_dosa_cooked = 1
	
