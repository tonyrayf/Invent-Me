//Draw self with animation or not
if (animation_index == -1) draw_self();
else
{
	var x_ch = animcurve_get_channel(animation_index, "x");
	var xscale = animcurve_channel_evaluate(x_ch, anim_iterator);
	
	var y_ch = animcurve_get_channel(animation_index, "y");
	var yscale = animcurve_channel_evaluate(y_ch, anim_iterator);
	
	var r_ch = animcurve_get_channel(animation_index, "rot");
	var rot = animcurve_channel_evaluate(r_ch, anim_iterator);
	
	anim_iterator += anim_delta_i;
	
	if (anim_delta_i >= 1)
	{
		animation_index = -1;
		anim_iterator = 0;
	}
	
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, rot, image_blend, image_alpha);
}