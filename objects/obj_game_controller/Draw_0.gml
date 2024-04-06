draw_set_font(fnt_refresh);
draw_set_colour(c_white);

if room == rm_refresh {
			
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);		
		
		draw_text(room_width/2, room_height/2, "Refreshni browser!");
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);	

}