if (!invincible) {		
	global.shake_magnitude = 5;
	global.hp -= 1;
	if (!audio_is_playing(snd_asset("player_hit"))) audio_play_sound(snd_asset("player_hit"), 2, false);
	
	if (global.hp <= 0) {
		if (!audio_is_playing(snd_asset("player_dead"))) audio_play_sound(snd_asset("player_dead"), 2, false);
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

















