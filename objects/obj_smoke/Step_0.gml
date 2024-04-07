// Get the camera's X position
var _cam_x = camera_get_view_x(view_camera[0]);

// Calculate the new X position for the smoke object based on the background's movement
x = initial_x + (_cam_x * 0.9); // Adjust this value as needed based on the desired speed