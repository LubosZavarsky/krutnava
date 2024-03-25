var _space = keyboard_check_pressed(vk_space);
var _click = mouse_check_button_pressed(mb_left);

var _is_camera_at_bottom = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) >= room_height;

//if(room == rm_menu) {
	
//	if (_space) {
//		room_goto_next();
//	}
	
//}

if (room == rm_intro) {
	
		
    if (_space || _click) {
        if (instance_exists(obj_title)) {
           
            instance_destroy(obj_title);              
			instance_create_layer(0, 0, "Instances", obj_story);
			
        } else if (instance_exists(obj_story)) {
            
            instance_destroy(obj_story);
			instance_create_layer(0, 0, "Instances", obj_controls);
			
		} else if (instance_exists(obj_controls)) {
            
            instance_destroy(obj_controls);			
		}
    }
	
	if (!instance_exists(obj_title) && !instance_exists(obj_story) && !instance_exists(obj_controls)) {
	
		camera_scroll(4);
		
		if _is_camera_at_bottom && _space ||  _is_camera_at_bottom && _click  {
			//show_debug_message("At bottom");
			room_goto_next();
		
		} 
	
	}
}


if (room == rm_ufo || room == rm_win_1) {

	if _space || _click room_goto_next();

}

if (room == rm_win_2 || room == rm_lost) {

	if _space || _click game_restart();

}

// test
if  keyboard_check_pressed(vk_escape) {
	
	//room_goto(rm_menu);
	//audio_stop_all();
	game_restart();

}
