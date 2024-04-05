// Player input
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_jump = keyboard_check_pressed(vk_space);
var _key_up = keyboard_check(vk_up);
var _key_shot = keyboard_check(vk_shift);
var _touching_ladder_and_holding_up = place_meeting(x, y, obj_ladder) && _key_up;

if (freeze) {
	sprite_index = spr_player_climb;
	image_index = 0;
	image_speed = 0;	
	if (audio_is_playing(snd_asset("steps"))) audio_stop_sound(snd_asset("steps"));
} else {
	image_speed = 1;	
}

// Stop executing the rest
if (global.hp <= 0 || global.collect >= 6 || freeze) exit;

// Facing directions
if(_key_right) {
	facing_direction = 1;
} else if(_key_left) {
	facing_direction = -1;
}

// Climbing
if (_touching_ladder_and_holding_up) {
    // Climb up
    y -= climb_spd;
	sprite_index = spr_player_climb;
	weapon_sprite_index = spr_ladicka_up;
} else {
    // Movement calc
    var _move = _key_right - _key_left; // 1 or -1 or 0 (when arrows pressed together)
    
    hsp = _move * walksp;
    vsp = vsp + grv;
	
	// Keep player in the room
	x=clamp(x,0,room_width-sprite_width/2);
	//y=clamp(y,0,room_height-sprite_height/2);
	
	    
    // Jumping
    if (place_meeting(x, y+1, obj_solid) && _key_jump) {
		if (!audio_is_playing(snd_asset("jump"))) audio_play_sound(snd_asset("jump"), 2, false);
        vsp = -jumpsp;
    }
    
    // Horizontal collision
    if (place_meeting(x+hsp, y, obj_solid)) {
		//var _instance = instance_place(x+hsp, y, obj_solid)		
		//y = _instance.y - _instance.sprite_height * 2
		
        while (!place_meeting(x+sign(hsp), y, obj_solid)) {    
            x = x + sign(hsp);    
        }
        hsp = 0;
    }
    
    x = x + hsp;
    
    // Vertical collision
    if (place_meeting(x, y+vsp, obj_solid)) {
        while (!place_meeting(x, y+sign(vsp), obj_solid)) {    
            y = y + sign(vsp);    
        }
        vsp = 0;
    }
    
    y = y + vsp;
    
    // Animation
    if (!place_meeting(x,y+1,obj_solid)) {
        sprite_index = spr_player_jump;
		weapon_sprite_index = spr_ladicka_jump;
		if (audio_is_playing(snd_asset("steps"))) audio_stop_sound(snd_asset("steps"));
    } else {        
        if (hsp != 0) {      
            sprite_index = spr_player_run;
			weapon_sprite_index = spr_ladicka_run;
			if (!audio_is_playing(snd_asset("steps"))) audio_play_sound(snd_asset("steps"), 2, false);
        } else {            
            sprite_index = spr_player_idle;
			weapon_sprite_index = spr_ladicka_idle;
			if (audio_is_playing(snd_asset("steps"))) audio_stop_sound(snd_asset("steps"));
        }
    }	
	
	// SHOOTING
	if (cooldown > 0) {
		cooldown--;
	}

	if(has_weapon && _key_shot && cooldown <= 0) {		
				
		var _shot = instance_create_layer(x, y, "Player_shot", obj_shot_player)
		audio_play_sound(snd_asset("player_shoot"), 2, false);
		_shot.shot_direction = facing_direction
		_shot.image_xscale = sign(facing_direction)		
		cooldown = cooldown_duration; // Start cooldown
	}
}


// Flip the sprite in the right direction
if (hsp != 0) image_xscale = sign(hsp);