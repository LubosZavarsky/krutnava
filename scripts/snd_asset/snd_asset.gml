/// @function							snd_asset(_snd_name);
/// @param  {string}  _snd_name			Souns sprite file name.
/// @description	Assemble sound sprite asset index from user selected sound set and file name.

function snd_asset(_snd_name) {
	
	return asset_get_index(global.audio_set + _snd_name);

}