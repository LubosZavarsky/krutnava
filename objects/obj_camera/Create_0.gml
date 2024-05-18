cam = view_camera[0];
follow = obj_player;

view_h_half = camera_get_view_height(cam) * 0.5;
view_w_half = camera_get_view_width(cam) * 0.5;

x_to = follow.x //xstart;
y_to = follow.y //ystart;


y_offset = 129; 

smoothing_factor = 5; 


//// STEP backup
//if (instance_exists(follow)) {	
//	x_to = follow.x;
//	y_to = follow.y -y_offset;
//}

//x += (x_to - x) /5;
//y += (y_to - y) /5;

//x = clamp(x, view_w_half, room_width - view_w_half);
//y = clamp(y, view_h_half, room_height - view_h_half);



