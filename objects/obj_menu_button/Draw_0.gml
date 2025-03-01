draw_self();


///Draw
scribble($"[alpha, {layer_get_alpha("Menu")}][scale, 0.9][#CC863C][font_main][fa_center][fa_middle]{button_text}")
	.shadow(make_color_rgb(51, 27, 15), 1)
	.draw(x, y);