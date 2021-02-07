if(global.is_loaded)
{
	global.string_beatmap = string_delete(global.string_beatmap,global.beatmap_len,1);
	show_debug_message("removed 1 char from beatmap");
}