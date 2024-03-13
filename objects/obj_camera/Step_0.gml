if (instance_exists(follow)) {	
	x_to = follow.x;
	y_to = follow.y + y_offset;
}

x += (x_to - x) /5;
y += (y_to - y) /5;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);