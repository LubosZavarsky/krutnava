var _key_up_press = keyboard_check_pressed(vk_up);
var _key_up_hold = keyboard_check(vk_up);


if (target_room = rm_roof) {
	 if _key_up_press || _key_up_hold { 
		obj_player.vsp = 0;
		room_transition(target_room, target_x, target_y);
	}
	
} else {
	 if _key_up_press { 
		room_transition(target_room, target_x, target_y);
	}
}