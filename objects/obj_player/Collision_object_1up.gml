if (global.hp < 3) { 
	
	global.hp += 1;
	instance_create_layer(other.x, other.y, "Instances", obj_1up_taken);
	if (!audio_is_playing(snd_asset("1up"))) audio_play_sound(snd_asset("1up"), 2, false);
	with (other) instance_destroy();	
	
}

