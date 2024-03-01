/// @function							camera_scroll(_scroll_speed);
/// @param  {real}  _scroll_speed       Speed of vertical scroll.
/// @description	Smoothly scroll camera on y axis by one full screen.

function camera_scroll(_scroll_speed) {
	
	// Get viewport height
        var _viewport_height = camera_get_view_height(view_camera[0]); // Assuming you're using the default view
        
        // Get the bottom position of the room
        var _room_bottom = room_height - _viewport_height;
        
        // Set target position for the camera
        var _target_y = min(camera_get_view_y(view_camera[0]) + _viewport_height, _room_bottom); // Move the camera down by one screen, but not beyond the bottom of the room
        
        // Smoothly move the camera towards the target position
        var _current_y = camera_get_view_y(view_camera[0]);
        
        // Move the camera towards the target position
        if (_current_y < _target_y) {
            var _new_y = _current_y + min(_target_y - _current_y, _scroll_speed);
            camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), _new_y);
        }

}