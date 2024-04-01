// Player input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);
var key_up = keyboard_check(vk_up);
var key_shot = keyboard_check(vk_shift);
var touching_ladder_and_holding_up = place_meeting(x, y, obj_ladder) && key_up;

if global.hp <= 0 exit;

if(key_right) {
	facing_direction = 1;
} else if(key_left) {
	facing_direction = -1;
}

//if instance_exists(obj_shot_player){

//	sprite_index = spr_player_shoot;
//	exit;
//} 


// Climbing
if (touching_ladder_and_holding_up) {
    // Climb up
    y -= climb_spd;
	sprite_index = spr_player_climb;
	weapon_sprite_index = spr_ladicka_up;
} else {
    // Movement calc
    var move = key_right - key_left; // 1 or -1 or 0 (when arrows pressed together)
    
    hsp = move * walksp;
    vsp = vsp + grv;
	
	// Keep player in the room
	x=clamp(x,0,room_width-sprite_width/2);
	//y=clamp(y,0,room_height-sprite_height/2);
	
	    
    // Jumping
    if (place_meeting(x, y+1, obj_solid) && key_jump) {
        vsp = -jumpsp;
    }
    
    // Horizontal collision
    if (place_meeting(x+hsp, y, obj_solid)) {
		var _instance = instance_place(x+hsp, y, obj_solid)
		
		y = _instance.y - _instance.sprite_height * 2
		
        //while (!place_meeting(x+sign(hsp), y, obj_solid)) {    
        //    x = x + sign(hsp);    
        //}
        //hsp = 0;
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
    } else {        
        if (hsp != 0) {      
            sprite_index = spr_player_run;
			weapon_sprite_index = spr_ladicka_run;
        } else {            
            sprite_index = spr_player_idle;
			weapon_sprite_index = spr_ladicka_idle;
        }
    }	

	if(has_weapon && key_shot && !instance_exists(obj_shot_player)) {		
				
		var _shot = instance_create_layer(x, y, "Instances", obj_shot_player)
		_shot.shot_direction = facing_direction
		_shot.image_xscale = sign(facing_direction)		
	}
}


// Flip the sprite in the right direction
if (hsp != 0) image_xscale = sign(hsp);