function object_do_sequence_animation(sequence)
{
	var sq = layer_sequence_create(layer, x, y, sequence);
	var sq_struct = layer_sequence_get_instance(sq);
	
	sequence_instance_override_object(sq_struct, object_index, id);
}

function object_do_stretch_animation(animcurve, time = -1)
{
	animation_index = animcurve;
	
	anim_delta_i = 1 / (time * game_get_speed(gamespeed_fps));
	anim_iterator = 0;
}