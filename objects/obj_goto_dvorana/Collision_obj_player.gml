if (room == rm_game && keyboard_check_pressed(vk_up)) {
	room_goto(rm_dvorana)
} else if (room == rm_dvorana) {
	room_goto(rm_game)
}