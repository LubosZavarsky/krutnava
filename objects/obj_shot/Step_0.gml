x += shot_speed * shot_direction;

var _cam_x = camera_get_view_x(view_camera[0])
var _cam_width = camera_get_view_width(view_camera[0])

// Destroy instance whet it leaves camera view
if (x < _cam_x || x > _cam_x + _cam_width) {
    instance_destroy(); 
}