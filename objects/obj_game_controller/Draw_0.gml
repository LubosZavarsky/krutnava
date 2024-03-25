// get camera view
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	//var cw = camera_get_view_width(view_camera[0]);

	// draw text	
	//draw_set_colour(c_red);
	//draw_text(cx + cw/2.5, cy + 25, "Press R to restart");
	
	draw_set_colour(c_red);

if (room == rm_game || room == rm_dvorana || room = rm_roof) {
			
		// LIVES
		//for (var _i = 0; _i < global.hp; _i++) {
		//	draw_sprite(spr_heart, 0, cx + 25 + 25*i, cy + 55)			
		//}		
		draw_text(cx + 25, cy + 25,"lives: "+ string(global.hp));
		
		// COLLECTIBLES
		draw_text(cx + 540, cy + 25,"parts: "+ string(global.collect) + " / 4");

}