function player_gravity_down()
{
	y = bbox_bottom;
	sprite_index = spr_sum_stand;
}


function player_gravity_up()
{
	y = bbox_top;
	sprite_index = spr_sum_stand_reverse;
}