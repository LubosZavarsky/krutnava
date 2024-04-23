if (!instance_exists(bubble_asset())) {

	instance_create_layer(1081, 680, "Instances", bubble_asset())
	if !audio_is_playing(snd_asset("reception")) audio_play_sound(snd_asset("reception"), 2, false);

}