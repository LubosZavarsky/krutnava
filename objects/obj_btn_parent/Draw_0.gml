draw_self();

draw_set_font(fnt_game);
draw_set_color(c_white)

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(image_alpha); 
draw_text(x,y,btn_text);
draw_set_alpha(1); 

draw_set_halign(fa_left);
draw_set_valign(fa_top);

