// Player input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_space);


   	
	grv = 0.3;

	// Movement calc
	var move = key_right - key_left; // 1 or -1 or 0 (when arrows pressed together)

	hsp = move * walksp;

	vsp = vsp + grv;

	////if (collision) {
	////	walksp = 0;
	////	sprite_index = spr_blood;
	////	exit;
	////}

	// Jumping
	if	place_meeting(x, y+1, obj_solid) && key_jump {
		vsp = -jumpsp;
	}

	// Horizontal collision
	if (place_meeting(x+hsp, y, obj_solid)) {

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
	
	//if (vsp > 0) {
	//	sprite_index = spr_player_fall;
	//}

} else {		
	
	if (hsp != 0) {		
		sprite_index = spr_player_run;
	} else {			
		sprite_index = spr_player_idle;		
	}
}


// Flip the sprite in the right direction
if (hsp != 0) image_xscale = sign(hsp);


