//instance_create_layer(room_width + 100, irandom_range(45,460), "Clouds", obj_cloud);

var _cloud = noone; // Initialize the cloud variable

// Loop until a non-overlapping cloud is created
while (_cloud == noone || place_meeting(_cloud.x, _cloud.y, obj_cloud)) {
    // Spawn the cloud at a random position
    var _cloud_x = room_width + 100;
    var _cloud_y = irandom_range(45, 455);
    _cloud = instance_create_layer(_cloud_x, _cloud_y, "Clouds", obj_cloud);
}



alarm[0] = 350;




















