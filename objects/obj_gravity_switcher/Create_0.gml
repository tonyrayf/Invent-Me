event_inherited();


my_area = instance_place(x, y, obj_gravity_area);


capture_func = function()
{
	if (captured_weapon == weapon.shuriken)
	{
		my_area.grav_direction = DOWN;
	}
	else if (captured_weapon == weapon.knife)
	{
		my_area.grav_direction = UP;
	}
}