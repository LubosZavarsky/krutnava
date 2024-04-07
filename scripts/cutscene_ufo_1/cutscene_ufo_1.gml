// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_ufo_1(){
	
	var _target_y = 183;
	var _spd = 1.4; 
	var _player = obj_player_ufo;	
	    
	   if (_player.y > _target_y) {
	       _player.y -= _spd;
	    } else {
	        // Stop the cutscene once the player reaches or passes the target position
	        _player.y = _target_y; // Ensure the player is exactly at the target position
	        //_player.image_index = 0;		
			
			//room_transition(2);
			room_goto(rm_ufo_2);
		}	

}