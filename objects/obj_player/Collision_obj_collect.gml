with (other) instance_destroy();

global.collect += 1;

if (global.collect >= 4 ) {
	
	instance_destroy(); //??

	room_goto(rm_ufo_1);

}