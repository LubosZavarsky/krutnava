//Check if we're above them
var _above_enemy = y < other.y + vsp;
var _falling = vsp > 0;

if (_above_enemy && _falling) {
	//Keep player above the enemy
	if (!place_meeting(x, yprevious, obj_solid)) {
		y = yprevious;
	}
	//Get as close to the enemy as possible
	while (!place_meeting(x, y + 1, other)) {
		y++;
	}

	with (other) {
		if (!audio_is_playing(snd_asset("smash"))) audio_play_sound(snd_asset("smash"), 2, false);
		walksp = 0;
		sprite_index = spr_enemy_dead;
	}
	//Bounce off the enemy
	vsp = -8
} else {	
	
	if (!invincible && obj_enemy.sprite_index != spr_enemy_dead) {		
		global.shake_magnitude = 5;
		global.hp -= 1;
		if (!audio_is_playing(snd_asset("collision"))) audio_play_sound(snd_asset("collision"), 2, false);
		
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
}





