vsp = vsp + grv;

// Horizontal collision - change direction
if (place_meeting(x+hsp, y, obj_turner)) {
	while (!place_meeting(x+sign(hsp), y, obj_turner)) {	
		x = x + sign(hsp);	
	}			
	walksp = -walksp;	
	image_xscale = sign(hsp);
	
	facing_direction = sign(hsp);
}

// Vertical collision
if (place_meeting(x, y+vsp, obj_solid)) {

	while (!place_meeting(x, y+sign(vsp), obj_solid)) {	
		y = y + sign(vsp);			
	}	
	vsp = 0;
			
	hsp = -walksp; // when on ground, walk! (start walking left = minus)
	x = x + hsp;		
	
}

y = y + vsp;

// SHOOTING
var _cam_x = camera_get_view_x(view_camera[0])
var _cam_width = camera_get_view_width(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
var _cam_height = camera_get_view_height(view_camera[0])

if (x > _cam_x && x < _cam_x + _cam_width && y > _cam_y && y < _cam_y + _cam_height) {
   is_in_camera_view = true; 
} else {
	is_in_camera_view = false;
}

if(is_in_camera_view) {
	show_debug_message("enemy in camera view facing " + string(facing_direction))
	var _player = instance_find(obj_player, 0)
	
	var _player_in_front = false;
    if (facing_direction == 1 && _player.x < x) {
        _player_in_front = true;
    } else if (facing_direction == -1 && _player.x > x) {
        _player_in_front = true;
    }
	
	if(_player_in_front && point_distance(x, y, _player.x, _player.y) < 250 && !instance_exists(obj_shot_enemy) && cooldown <= 0) {
		var _shot = instance_create_layer(x, y, "Instances", obj_shot_enemy);
		_shot.shot_direction = -facing_direction	
		cooldown = cooldown_duration; // Start cooldown
	}
}

if (cooldown > 0) {
    cooldown--;
}