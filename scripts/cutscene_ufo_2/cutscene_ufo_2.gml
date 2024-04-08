// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function cutscene_ufo_2() {
	
	var _target_x = -150;
    var _acceleration = 0.01; // Rate at which speed increases
    var _ufo = instance_find(obj_ufo_flying, 0); // Find the UFO object
    
    if (_ufo != noone) {
        // Gradually increase speed
        _ufo.spd += _acceleration;
        
        // Move the UFO
        _ufo.x -= _ufo.spd;
        
        // Check if the UFO has reached the target position
        if (_ufo.x <= _target_x) {
            // Stop the cutscene once the UFO reaches the target position
            _ufo.x = _target_x; // Ensure the UFO is exactly at the target position
            room_goto(rm_win_1); // Change to the next room
        }
    }

}