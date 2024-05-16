var _space = keyboard_check_pressed(vk_space);
var _enter = keyboard_check_pressed(vk_enter);
var _click = mouse_check_button_pressed(mb_left);
var _fullscrn = keyboard_check_pressed(ord("F"));

var _cam_y = camera_get_view_y(view_camera[0])
var _cam_height = camera_get_view_height(view_camera[0])

var _is_camera_at_bottom = _cam_y + _cam_height >= room_height;

// Fullscreen toggle
if _fullscrn window_set_fullscreen(!window_get_fullscreen());


if (room == rm_intro) {
	
		
    if _enter || _space || _click {
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
	
	cutscene_ufo_1();

}

if (room == rm_ufo_2) {
	
	cutscene_ufo_2();
}

if (room == rm_win_1) {

	if _enter || _space || _click {
	
		 if (!instance_exists(obj_bubble_ilja)) {           
                        
			instance_create_layer(305, 224, "Instances", obj_bubble_ilja);
			
        } else if (instance_exists(obj_bubble_ilja) && !instance_exists(obj_bubble_eugen)) {
                        
			instance_create_layer(355, 338, "Instances", obj_bubble_eugen);		
			
		} else {
			
			room_goto_next();
		} 	
	}
}

if (room == rm_win_2 || room == rm_lost) {

	if _enter || _space || _click {
	
		if (os_browser != browser_not_a_browser) {	
			audio_stop_all();
			room_transition(rm_refresh);
		} else {
			
			room_transition(rm_restart);
		}		
	} 
}


if  keyboard_check_pressed(vk_escape) {
	
	if (os_browser != browser_not_a_browser) {	
		audio_stop_all();
		room_transition(rm_refresh);
	} else {
		
		room_transition(rm_restart);
	}	
}

if (room == rm_restart) {
	
	game_restart();

}

if (room == rm_menu) {

	// Handle arrow key input for navigation
	if (keyboard_check_pressed(vk_right)) {
	    current_btn_x += 1;
	    if (current_btn_x > max_btn_x) {
	        current_btn_x = 1; // Wrap around to the first button in the row
	        current_btn_y += 1; // Move to the next row
	        if (current_btn_y > max_btn_y) current_btn_y = 1; // Wrap around to the first row
	    }
	}
	if (keyboard_check_pressed(vk_left)) {
	    current_btn_x -= 1;
	    if (current_btn_x < 1) {
	        current_btn_x = max_btn_x; // Wrap around to the last button in the row
	        current_btn_y -= 1; // Move to the previous row
	        if (current_btn_y < 1) current_btn_y = max_btn_y; // Wrap around to the last row
	    }
	}
	if (keyboard_check_pressed(vk_down)) {
	    current_btn_y += 1;
	    if (current_btn_y > max_btn_y) {
	        current_btn_y = 1; // Wrap around to the first button in the column
	    }
	}
	if (keyboard_check_pressed(vk_up)) {
	    current_btn_y -= 1;
	    if (current_btn_y < 1) {
	        current_btn_y = max_btn_y; // Wrap around to the last button in the column
	    }
	}

	// Calculate the current button index based on the grid position
	current_btn = (current_btn_y - 1) * max_btn_x + current_btn_x;

}


