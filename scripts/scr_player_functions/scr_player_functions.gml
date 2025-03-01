function player_gravity_down()
{
	y = bbox_bottom;
	sprite_index = spr_sum_stand;
	
	object_do_stretch_animation(ac_player_gravity_switch_down);
}


function player_gravity_up()
{
	y = bbox_top;
	sprite_index = spr_sum_stand_reverse;
	
	object_do_stretch_animation(ac_player_gravity_switch_up);
}