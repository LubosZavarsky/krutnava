if (sprite_index == spr_holub_flying) {

	// Simulate flying motion
    x += spd_x
   	
	// Add more variability to the upward movement
    y += spd_y + random_range(-3, 3); 

    // Add more variability to the horizontal movement
    x += random_range(-1, 1); 
	
}