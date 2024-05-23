var _center_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
var _center_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;

with (other) {

	instance_create_layer(other.x, other.y, "Instances", obj_collect_taken);
	if (!audio_is_playing(snd_asset("collectible_taken"))) audio_play_sound(snd_asset("collectible_taken"), 2, false);
	instance_destroy();

} 

global.collect += 1;

if (global.collect >= 6 ) {
	
	// deactivate movement enemies	
	with (obj_enemy) instance_deactivate_object(obj_enemy)
	
	// freeze player animation
	image_speed = 0;	
	
	instance_create_layer(_center_x, _center_y, "All_taken", obj_all_taken);
	if (audio_is_playing(snd_asset("msc_game"))) audio_stop_sound(snd_asset("msc_game"));
	if (!audio_is_playing(snd_asset("all_taken"))) audio_play_sound(snd_asset("all_taken"), 2, false);
			
	alarm[2] = 110;	

}

