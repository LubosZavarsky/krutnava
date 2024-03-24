var _key_up_press = keyboard_check_pressed(vk_up);
var _key_up_hold = keyboard_check(vk_up);

if (target_room = rm_roof) {
	
	 if _key_up_press || _key_up_hold { 

		room_goto(target_room);
		other.x = targetX;
		other.y = targetY;

	}
	
} else {
	
	 if _key_up_press { 

		room_goto(target_room);
		other.x = targetX;
		other.y = targetY;

	}
}