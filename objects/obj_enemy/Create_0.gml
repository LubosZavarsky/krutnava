randomize();

initial_x = x;
initial_y = y;

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 3;

facing_direction = 1;
is_in_camera_view = false;

// Shooting cooldown
cooldown = 0; 
cooldown_duration = irandom_range(80, 180); 

sprite_index = choose(spr_enemy_green, spr_enemy_black, spr_enemy_purple);

