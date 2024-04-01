//Check if we're above them
var _above_enemy = y < other.y + vsp;
var _falling = vsp > 0;

if (_above_enemy && _falling) {
	//Keep player above the enemy
	if (!place_meeting(x, yprevious, obj_solid)) {
		y = yprevious;
	}
	//Get as close to the enemy as possible
	while (!place_meeting(x, y + 1, other)) {
		y++;
	}

	with (other) {
		walksp = 0;
		sprite_index = spr_enemy_dead;
	}
	//Bounce off the enemy
	vsp = -8
} else {	
	
	if (!invincible) {		
		global.shake_magnitude = 5;
		global.hp -= 1;
		
		if (global.hp <= 0) {
			walksp = 0;
			sprite_index = spr_player_dead;			
		} else {  
			invincible = true
		   	alarm[0] = 60 * 2;
			alarm[1] = 1;
		}
	}
}





