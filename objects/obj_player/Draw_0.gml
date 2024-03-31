// Draw the player sprite
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)


if (has_weapon) { 
    draw_sprite_ext(weapon_sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1)
}