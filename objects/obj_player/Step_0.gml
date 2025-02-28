#region X


direction_x = (Input.key_right - Input.key_left) * can_move;


//Smooth movement
if (direction_x != 0)
{
	speed_x += acceleration_x * direction_x;
	last_direction_x = direction_x;
}
else if (can_decelerate)
{
	if (sign(speed_x) == last_direction_x) speed_x += -deceleration_x * last_direction_x;
	
	else speed_x = 0;  //if speed becomes negative, set it to zero
}


var step_over = false;  //step over small ledges
if (place_meeting(x + speed_x, y, global.solid_objects)) //Collision check
{
	var i = 1; var step_over_maximum = 10;  //ledge max height to step over
	repeat (step_over_maximum) //Check for small ledge
	{
		if (!place_meeting(x + speed_x, y - i, global.solid_objects))
		{
			y -= i;
			step_over = true;
			break;
		} i += 1;
	}
	if (!step_over) //no need to check for collision if already stepped over the ledge
	{
		while (!place_meeting(x + sign(speed_x), y, global.solid_objects))
		{
			x += sign(speed_x);
		}
		speed_x = 0;
	}
}


speed_x = clamp(speed_x, top_speed_x_left, top_speed_x_right);


x += speed_x;

#endregion
#region Y

speed_y += acceleration_g;


//Jump
if (can_jump and !place_meeting(x, y - 1, global.solid_objects))
{
	//Late jump
	if (place_meeting(x, y + 1, global.solid_objects))
		alarm_set(0, 0.1 * game_get_speed(gamespeed_fps)); //explanation in alarm
	
	//Early jump
	if (Input.key_jump_press)
		alarm_set(1, 0.1 * game_get_speed(gamespeed_fps)); //explanation in alarm
	
	
	//Jump activation
	if (Input.key_jump_press and alarm_get(0) >= 0)
	or (place_meeting(x, y + 1, global.solid_objects) and alarm_get(1) >= 0)
	{
		speed_y = -jump_start_speed;
		alarm_set(0, 0);
		alarm_set(1, 0);
		
		object_do_stretch_animation(ac_player_jump);
	}
	
	//Velocity Cut
	if (Input.key_jump_release and speed_y < 0)
	{
		speed_y *= 0.5;
		//if key jump release, then speed is divided by 2
	}
}


if (place_meeting(x, y + speed_y, global.solid_objects)) //Collision check
{
	while (!place_meeting(x, y + sign(speed_y), global.solid_objects))
	{
		y += sign(speed_y);
	}
	speed_y = 0;
	
	if (is_falling)
	{
		is_falling = false;
		
		object_do_stretch_animation(ac_player_hit_ground, 0.75);
	}
}
else
{
	is_falling = true;
}


y += speed_y;

#endregion


#region Sprites and images

image_index = sign(last_direction_x + 1);

#endregion


#region Weapons

if (Input.key_attack)
{
	var dir = last_direction_x;
	with (instance_create_layer(x, y - sprite_height / 2, layer, current_weapon))
	{
		speed_x *= dir;
	}
}
if (Input.key_weapon_switch)
{
	weapon_index = wrap(weapon_index + 1, weapon.shuriken, weapon.knife);
	
	switch (weapon_index)
	{
		case weapon.shuriken: current_weapon = obj_weapon_plus_shuriken; break;
		case weapon.knife: current_weapon = obj_weapon_minus_knife; break;
	}
}

#endregion

if (instance_exists(obj_weapon_plus_shuriken)) show_debug_message("YES")
else show_debug_message("NO")