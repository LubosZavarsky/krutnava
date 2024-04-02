walksp = 0;
if (!audio_is_playing(snd_asset("enemy_hit"))) audio_play_sound(snd_asset("enemy_hit"), 2, false);
sprite_index = spr_enemy_dead;

with(other) {
	instance_destroy()
}