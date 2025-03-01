draw_self();


draw_set_font(global.font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, button_text, button_scale, button_scale, 0);