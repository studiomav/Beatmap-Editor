if(global.is_loaded)
{
	global.string_beatmap = string_delete(global.string_beatmap,global.beatmap_len/2,global.beatmap_len/2);
	show_debug_message("halved beatmap");
}