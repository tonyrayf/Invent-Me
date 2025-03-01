if (stuck_in) //Stucked fade out
{
	if (alarm_get(0) == -1) alarm_set(0, 3 * game_get_speed(gamespeed_fps));
	
	image_alpha = alarm_get(0) / 60;
	
	nested_collapse;
}


//Movement
speed_y += acceleration_g * grav_direction;


//Collision check
if (place_meeting(x + speed_x, y + speed_y, global.solid_objects)) stuck_in = true;


x += speed_x;
y += speed_y;