if (setup)
{
	setup = false;
	
	sequence_id = layer_sequence_create(layer, seq_x, seq_y, sequence);
	seq_struct = layer_sequence_get_instance(sequence_id);
	
	var i = 0;
	repeat (array_length(instances_to_override))
	{
		var inst = instance_find(instances_to_override[i], 0);
		sequence_instance_override_object(seq_struct, instances_to_override[i], inst);
		++i;
	}
}


if (Input.key_attack) cutscene_skip;

if (cutscene_headpos >= cutscene_length)
{
	layer_sequence_destroy(sequence_id);
	
	instance_destroy();
}