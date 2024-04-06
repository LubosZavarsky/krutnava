// Get the camera's X position
var cam_x = camera_get_view_x(view_camera[0]);

// Calculate the new X position for the smoke object based on the background's movement
x = initial_x + (cam_x * 0.9); // Adjust this value as needed based on the desired speed