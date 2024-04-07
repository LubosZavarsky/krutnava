// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cutscene_ufo_2(){
	
	var _target_x = -150;
	var _spd = 3; 
	var _ufo = obj_ufo_flying;	
	    
	   if (_ufo.x > _target_x) {
	       _ufo.x -= _spd;
	    } else {
	        // Stop the cutscene once the player reaches or passes the target position
	        _ufo.x = _target_x; // Ensure the player is exactly at the target position
	        
			room_goto(rm_win_1);
		}	

}