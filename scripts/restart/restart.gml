/// @description	Restart game, navigate to the first room.

// NOT WORKING :(

function restart() {

		
		//global.audio_set = "";
	    global.hp = 3;
	    global.collect = 0;
	
	    // Reset persistent instance variables and states
	    with(obj_player) {        
	         x = initial_x;
	         y = initial_y;
			invincible = false;
			has_weapon = false;
			weapon_sprite_index = noone;
			facing_direction = 1;       
	    }			
			
			room_goto(rm_game);
			room_persistent = false;	
			room_goto(rm_reset);
			room_set_persistent(rm_game, true)		
			room_goto(rm_game);
	
			room_goto(rm_dvorana);					
			room_persistent = false;	
			room_goto(rm_reset);
			room_set_persistent(rm_dvorana, true)	
			room_goto(rm_dvorana);	
		
		
			room_goto(rm_roof)				
			room_persistent = false;	
			room_goto(rm_reset);
			room_set_persistent(rm_roof, true)	
			room_goto(rm_roof)		
			
		//game_restart();
		room_goto(rm_game)		
				
}