if (!draw_gui) exit;


image_alpha = lerp(image_alpha, 1, 0.2);

if (instance_exists(obj_player))
{
	var _x = 200;
	var _y = 150;

	var scale = 4;

	draw_sprite_ext(spr_weapon_plus_shuriken, 0, _x,       _y, scale, scale, 0, c_white, image_alpha);
	draw_sprite_ext(spr_weapon_minus_knife	, 0, _x + 140, _y, scale, scale, 0, c_white, image_alpha);
}