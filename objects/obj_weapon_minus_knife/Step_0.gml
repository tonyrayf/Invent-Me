if (stuck_in) //Stucked fade out
{
	if (alarm_get(0) == -1) alarm_set(0, 3 * game_get_speed(gamespeed_fps));
	
	image_alpha = alarm_get(0) / 60;
	
	exit;
}


image_angle = point_direction(x, y, x + speed_x, y + speed_y);


//Collision check
var inst = instance_place(x + speed_x, y + speed_y, global.solid_objects);
if (inst != noone)
{
	if (inst.object_index == obj_number_box) with (inst)
	{
		if (size <= min_size) exit;
		
		
		size -= 1;
		
		if (size != 0)
		{
			image_xscale -= inst.size_delta;
			image_yscale -= inst.size_delta;
		}
		else instance_destroy();
	}
	stuck_in = true;
}


//Movement
speed_y += acceleration_g;

x += speed_x;
y += speed_y;