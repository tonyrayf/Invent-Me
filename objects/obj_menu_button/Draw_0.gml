draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);


///Draw
scribble($"[alpha, {image_alpha}][scale, 0.9][#CC863C][font_main][fa_center][fa_middle]{button_text}")
	.shadow(make_color_rgb(51, 27, 15), 1)
	.draw(x, y);