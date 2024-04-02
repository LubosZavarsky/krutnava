with (other) instance_destroy();

var _xx = (camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]))/2);
var _yy = (camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]))/2);

if instance_number(obj_ladicka_taken) == 0 instance_create_layer(_xx, _yy, "Instances", obj_ladicka_taken);
if (!audio_is_playing(snd_asset("tuner_taken"))) audio_play_sound(snd_asset("tuner_taken"), 2, false);

has_weapon = true;