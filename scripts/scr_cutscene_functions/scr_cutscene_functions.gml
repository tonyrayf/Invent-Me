#macro cutscene_play layer_sequence_play(Cutscene_manager.sequence_id)

#macro cutscene_pause layer_sequence_pause(Cutscene_manager.sequence_id)

#macro cutscene_stop layer_sequence_destroy(Cutscene_manager.sequence_id)

function cutscene_set_headpos(headpos)
{
	layer_sequence_headpos(Cutscene_manager.sequence_id, headpos);
}

#macro cutscene_length layer_sequence_get_length(Cutscene_manager.sequence_id)

#macro cutscene_skip cutscene_set_headpos(cutscene_length - 1)

#macro cutscene_headpos layer_sequence_get_headpos(Cutscene_manager.sequence_id)