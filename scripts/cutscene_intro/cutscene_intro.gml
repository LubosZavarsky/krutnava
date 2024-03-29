// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_intro(){
	

var _target_y = 825;
var _spd = 0.5; 
var _player = obj_player_intro;

	
	    // Move the player towards the target position gradually
	    if (_player.y > _target_y) {
	       _player.y -= _spd;
	    }
    
	    // Check if the player has reached or passed the target position
	    if (_player.y <= _target_y) {
	        // Stop the cutscene once the player reaches or passes the target position
	        _player.y = _target_y; // Ensure the player is exactly at the target position
	        _player.image_index = 0;
			cutscene_finished = true;
			show_debug_message("Cutscene Intro Finished");
	       
	    }
	
}