with (other) {

instance_create_layer(other.x, other.y, "Instances", obj_collect_taken);
instance_destroy();

} 

global.collect += 1;

if (global.collect >= 6 ) {
	
	instance_destroy(); //??

	room_goto(rm_ufo_1);

}