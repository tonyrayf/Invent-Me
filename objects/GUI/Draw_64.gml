if (!instance_exists(obj_player)) exit;


var _x = 200;
var _y = 150;

var scale = 4;
var select_scale = 4.5;

var not_select_alpha = 0.5;

var is_shuriken = obj_player.weapon_index == weapon.shuriken
var is_knife	= obj_player.weapon_index == weapon.knife;

draw_sprite_ext(spr_weapon_plus_shuriken, 0, _x,       _y, is_shuriken ? select_scale : scale, is_shuriken ? select_scale : scale, 0, c_white, is_shuriken ? 1 : not_select_alpha);
draw_sprite_ext(spr_weapon_minus_knife	, 0, _x + 140, _y, is_knife	   ? select_scale : scale, is_knife	   ? select_scale : scale, 0, c_white, is_knife    ? 1 : not_select_alpha);