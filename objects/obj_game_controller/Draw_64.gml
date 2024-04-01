
draw_set_colour(c_red);

if (room == rm_game || room == rm_dvorana || room = rm_roof) {
			
		// LIVES
		for (var _i = 0; _i < global.hp; _i++) {
			draw_sprite(spr_heart, 0, x + 10 + 40 * _i, y + 10)			
		}		
		//draw_text(cx + 25, cy + 25,"lives: "+ string(global.hp));
		
		// COLLECTIBLES
		draw_text(x + 540, y + 25,"parts: "+ string(global.collect) + " / 6");

}