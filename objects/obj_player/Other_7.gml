if (sprite_index == spr_player_dead) {
	
	instance_destroy();
	//room_goto(rm_lost);
	room_transition(rm_lost);

} 