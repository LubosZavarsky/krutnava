if (obj_game_controller.current_btn == btn_id) {
    image_alpha = 1;
} else {
    image_alpha = 0.6;
}

if (obj_game_controller.current_btn == btn_id && keyboard_check_pressed(vk_enter)) {
    y = ystart + 4;
	alarm[0] = 10;
} 