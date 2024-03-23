//Check if we're above them
var above_enemy = y < other.y + vsp;
var falling = vsp > 0;

if (above_enemy and falling) {
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
	collision = true;
}





