with (other) {

instance_create_layer(other.x, other.y, "Instances", obj_collect_taken);
if (!audio_is_playing(snd_asset("collectible_taken"))) audio_play_sound(snd_asset("collectible_taken"), 2, false);
instance_destroy();

} 

global.collect += 1;

if (global.collect >= 6 ) {
	
	instance_destroy(); //??

	room_goto(rm_ufo_1);

}