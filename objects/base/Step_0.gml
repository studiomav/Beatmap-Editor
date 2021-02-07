if(global.is_loaded)
{
	global.beatmap_len = string_length(global.string_beatmap);
	if(global.beatmap_len > 256)
	{
		global.string_beatmap = string_delete(global.string_beatmap,256,global.beatmap_len - 256);
	}
	global.beatmap_len = string_length(global.string_beatmap);
	global.current_pos = audio_sound_get_track_position(global.audio_loop);
	global.audio_percent = global.current_pos / global.audio_len;
	objSeekhead.x = (global.audio_percent * 580) + 100;
	global.current_index = ceil(global.audio_percent * global.beatmap_len);
	if(global.current_index == 0)
	{
		global.current_index = 1;
	}
}

if(global.seekhead_dragging)
{
	if(mouse_x >= 100 && mouse_x <= 680)
	{
		objSeekhead.x = mouse_x;
		var seekPercent = ((mouse_x - 100) / 580);
		var newTime = global.audio_len * seekPercent;
		audio_sound_set_track_position(global.audio_loop, newTime);
	}
}

if(global.is_playing)
{
	btnPlay.sprite_index = sprBtnPause;
}

else
{
	btnPlay.sprite_index = sprBtnPlay;
}
