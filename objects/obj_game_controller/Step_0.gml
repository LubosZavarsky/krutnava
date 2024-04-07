var _space = keyboard_check_pressed(vk_space);
var _click = mouse_check_button_pressed(mb_left);

var _cam_y = camera_get_view_y(view_camera[0])
var _cam_height = camera_get_view_height(view_camera[0])

var _is_camera_at_bottom = _cam_y + _cam_height >= room_height;


if (room == rm_intro) {
	
		
    if (_space || _click) {
        if (instance_exists(obj_title)) {
           
            instance_destroy(obj_title);              
			instance_create_layer(0, 0, "Instances", obj_story_1);
			
        } else if (instance_exists(obj_story_1)) {
            
            instance_destroy(obj_story_1);
			instance_create_layer(0, 0, "Instances", obj_story_2);
			
		} else if (instance_exists(obj_story_2)) {
            
            instance_destroy(obj_story_2);		
			instance_create_layer(0, 0, "Instances", obj_story_3);
		
		} else if (instance_exists(obj_story_3)) {
            
            instance_destroy(obj_story_3);		
			instance_create_layer(0, 0, "Instances", obj_controls);
			
		} else if (instance_exists(obj_controls)) {
		
			instance_destroy(obj_controls);
		
		}
    }
	
	if (!instance_exists(obj_title) && !instance_exists(obj_story_1) && !instance_exists(obj_story_2) && !instance_exists(obj_story_3) && !instance_exists(obj_controls)) {
	
		camera_scroll(4);
		
		if _is_camera_at_bottom {				
			cutscene_intro();		
		} 	
	}
	
}


if (room == rm_ufo_1) {

	//if _space || _click room_goto_next();
	cutscene_ufo_1();

}

if (room == rm_ufo_2) {

	//if _space || _click room_goto_next();
	cutscene_ufo_2();

}

if (room == rm_win_1) {

	if _space || _click room_goto_next();

}

if (room == rm_win_2 || room == rm_lost) {

	if _space || _click {
	
		if (os_browser != browser_not_a_browser) {	
			audio_stop_all();
			room_goto(rm_refresh);
		} else {
			//game_restart();
			room_transition(rm_restart);
		}	
	
	} 

}


if  keyboard_check_pressed(vk_escape) {
	
	if (os_browser != browser_not_a_browser) {	
		audio_stop_all();
		room_goto(rm_refresh);
	} else {
		//game_restart();
		room_transition(rm_restart);
	}	

}

if (room == rm_restart) {
	
	game_restart();

}

//test
if  keyboard_check(vk_backspace) room_goto(rm_roof)
