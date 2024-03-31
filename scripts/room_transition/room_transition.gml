
function room_transition(_target_room){
	show_debug_message("room transition starting")
	var _target_x = (argument_count > 1) ? argument[1] : noone;
	var _target_y = (argument_count > 2) ? argument[2] : noone;
	
	var _cam_x = camera_get_view_x(view_camera[0])
	var _cam_y = camera_get_view_y(view_camera[0])
	var _cam_width = camera_get_view_width(view_camera[0])
	var _cam_height = camera_get_view_height(view_camera[0])
	
	if(!instance_exists(obj_transition)){
		show_debug_message("creating obj_transition in transition layer with")
		var _transition_instance = instance_create_layer(_cam_x + _cam_width/2, _cam_y + _cam_height/2, "Transition", obj_transition)
		_transition_instance.target_room = _target_room;
		_transition_instance.target_x = _target_x; 
		_transition_instance.target_y = _target_y;	
	}
}