
draw_set_font(fnt_hud);
draw_set_colour($fb5cae);

if (room == rm_game || room == rm_dvorana || room = rm_roof) {
			
		// LIVES
		for (var _i = 0; _i < global.hp; _i++) {
			draw_sprite(spr_heart, 0, x + 10 + 40 * _i, y + 10)			
		}		
		//draw_text(cx + 25, cy + 25,"lives: "+ string(global.hp));
		
		// COLLECTIBLES
		draw_text(x + 490, y + 20,"PARTY: "+ string(global.collect) + " / 6");

}