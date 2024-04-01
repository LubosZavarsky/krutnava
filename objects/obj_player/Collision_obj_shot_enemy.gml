if (!invincible) {		
	global.shake_magnitude = 5;
	global.hp -= 1;
	
	if (global.hp <= 0) {
		walksp = 0;
		sprite_index = spr_player_dead;			
	} else {  
		invincible = true
	   	alarm[0] = 60 * 2;
		alarm[1] = 1;
	}
}

with (other) {
	instance_destroy() 
}















