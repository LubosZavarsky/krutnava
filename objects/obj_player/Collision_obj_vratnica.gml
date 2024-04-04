if (!instance_exists(obj_nic_volne)) {

	instance_create_layer(1081, 680, "Instances", obj_nic_volne)
	if !audio_is_playing(snd_asset("reception")) audio_play_sound(snd_asset("reception"), 2, false);

}