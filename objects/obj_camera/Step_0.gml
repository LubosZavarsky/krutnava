if (instance_exists(follow)) {	
	x_to = follow.x;	
	
	if (follow.vsp != 0) {
		//y_to = lerp(y_to, follow.y, 1 / smoothing_factor);
		y_to = y_to
	}	else {
		//y_to = follow.y - y_offset
		y_to = lerp(y_to, follow.y - y_offset, 1 / smoothing_factor);
	}
}

x += (x_to - x) / smoothing_factor;
y += (y_to - y) / smoothing_factor;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);  
