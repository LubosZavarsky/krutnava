if (!instance_exists(obj_snd_MUTE_bubble)) {
	instance_create_layer(1081, 680, "Instances", obj_snd_MUTE_bubble)
	if !audio_is_playing(snd_asset("reception")) audio_play_sound(snd_asset("reception"), 2, false);
}

// CUSTOM BUBBLES

//if (!instance_exists(bubble_asset())) {

//	instance_create_layer(1081, 680, "Instances", bubble_asset())
//	if !audio_is_playing(snd_asset("reception")) audio_play_sound(snd_asset("reception"), 2, false);

//}