//instance_create_layer(room_width + 100, irandom_range(45,460), "Clouds", obj_cloud);

var cloud = noone; // Initialize the cloud variable

// Loop until a non-overlapping cloud is created
while (cloud == noone || place_meeting(cloud.x, cloud.y, obj_cloud)) {
    // Spawn the cloud at a random position
    var cloud_x = room_width + 100;
    var cloud_y = irandom_range(45, 455);
    cloud = instance_create_layer(cloud_x, cloud_y, "Clouds", obj_cloud);
}



alarm[0] = 350;




















