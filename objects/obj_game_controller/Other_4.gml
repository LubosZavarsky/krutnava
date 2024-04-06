switch (room) {

	case rm_intro:
		audio_play_sound(snd_asset("msc_intro"), 1, true)
	break;

	case rm_game:
		audio_stop_sound(snd_asset("msc_intro"));
		if (!audio_is_playing(snd_asset("msc_game"))) audio_play_sound(snd_asset("msc_game"), 1, true);
	break;

	case  rm_dvorana || rm_roof:
		if (!audio_is_playing(snd_asset("msc_game"))) audio_play_sound(snd_asset("msc_game"), 1, true)
	break;

	case rm_ufo_1:
		audio_stop_all();
		if (!audio_is_playing(snd_asset("msc_win"))) audio_play_sound(snd_asset("msc_win"), 1, true);
	break;

	case rm_ufo_2 || rm_win_1 || rm_win_2:
		if (!audio_is_playing(snd_asset("msc_win"))) audio_play_sound(snd_asset("msc_win"), 1, true);
	break;

	case rm_lost:
		audio_stop_all();
		if (!audio_is_playing(snd_asset("msc_lose"))) audio_play_sound(snd_asset("msc_lose"), 1, true);
	break;

}

//if (room == rm_intro) {

//	audio_play_sound(snd_asset("msc_intro"), 1, true)
	
//}

//if (room == rm_game) {

//	audio_stop_sound(snd_asset("msc_intro"));
//	if (!audio_is_playing(snd_asset("msc_game"))) audio_play_sound(snd_asset("msc_game"), 1, true);
	
//}

//if (room == rm_dvorana || room == rm_roof ) {
	
//	if (!audio_is_playing(snd_asset("msc_game"))) audio_play_sound(snd_asset("msc_game"), 1, true)

//}

//if (room == rm_ufo_1) {

//	audio_stop_all();
//	if (!audio_is_playing(snd_asset("msc_win"))) audio_play_sound(snd_asset("msc_win"), 1, true);
	
//}

//if (room == rm_ufo_2 || room == rm_win_1 || room == rm_win_2 ) {

//	if (!audio_is_playing(snd_asset("msc_win"))) audio_play_sound(snd_asset("msc_win"), 1, true);

//}

//if (room == rm_lost) {

//	audio_stop_all();
//	if (!audio_is_playing(snd_asset("msc_lose"))) audio_play_sound(snd_asset("msc_lose"), 1, true);
	
//}