image_xscale -= transition_speed;
image_yscale = image_xscale;

if (image_xscale <= 1 && !finished) {
	finished = true;
	
    image_xscale = 1;
    image_yscale = 1;
	room_goto(target_room)
	
	if(target_x && target_y) {
		with(obj_player) {
			x = other.target_x;
			y = other.target_y;
		}
	}

	instance_destroy()
}
