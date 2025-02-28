if (stuck_in) //Stucked fade out
{
	if (alarm_get(0) == -1) alarm_set(0, 3 * game_get_speed(gamespeed_fps));
	
	image_alpha = alarm_get(0) / 60;
	
	exit;
}


image_angle -= 2*abs(speed_x);  //you spin me round...


//Collision check
var inst = instance_place(x + speed_x, y + speed_y, global.solid_objects);
if (inst != noone)
{
	stuck_in = true;
	
	if (inst.object_index == obj_number_box) with (inst)
	{
		if (size >= max_size) exit;
		
		
		if (size != 0)
		{
			image_xscale += 0.41;
			image_yscale += 0.41;
		}
		else image_alpha = 1;
		
		size += 1;
	}
}


//Movement
speed_y += acceleration_g;

x += speed_x;
y += speed_y;