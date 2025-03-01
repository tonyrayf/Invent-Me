draw_self();


shader_set(sh_text_light);
shader_set_uniform_f(shader_get_uniform(sh_text_light, "pixelW"), texture_get_texel_width (font_get_texture(f_main)));
shader_set_uniform_f(shader_get_uniform(sh_text_light, "pixelH"), texture_get_texel_height(font_get_texture(f_main)));


draw_set_font(global.font_main);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, button_text, button_scale, button_scale, 0);

shader_reset();