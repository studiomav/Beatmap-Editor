if(global.is_loaded)
{
	global.string_beatmap = string_delete(global.string_beatmap,global.beatmap_len - 16,16);
	show_debug_message("removed 16 chars from beatmap");
}