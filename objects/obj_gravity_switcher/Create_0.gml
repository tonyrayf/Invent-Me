event_inherited();


capture_func = function()
{
	if (captured_weapon == weapon.shuriken)
	{
		global.grav = DOWN;
		
		with (obj_player)
		{
			sprite_index = spr_sum_stand;
			y = bbox_bottom;
		}
	}
	else if (captured_weapon == weapon.knife)
	{
		global.grav = UP;
		
		with (obj_player)
		{
			sprite_index = spr_sum_stand_reverse;
			y = bbox_bottom;
		}
	}
}