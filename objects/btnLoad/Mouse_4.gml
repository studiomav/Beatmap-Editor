audio_stop_all();
global.filetype = "";
global.audio_path = get_open_filename("ogg file|*.ogg;*", ".ogg");

if(string_copy(global.audio_path,string_length(global.audio_path)-3,4) == ".ogg")
{
	show_debug_message("file is .ogg!");
	global.filetype = "ogg";
}

else if(string_copy(global.audio_path,string_length(global.audio_path)-3,4) == ".wav")
{
	show_debug_message("file is .wav!");
	global.filetype = "wav";
}

else
{
	global.string_beatmap = "loop must be ogg or wav";	
	global.audio_path = "";
}

if (global.audio_path != "")
{
	if(global.filetype == "ogg")
	{
		file_text_open_read(global.audio_path);
		global.audio_stream = audio_create_stream(global.audio_path);
		global.audio_len = audio_sound_length(global.audio_stream);
		global.is_loaded = true;
		show_debug_message("we loaded " + global.audio_path);
		global.string_beatmap = global.string_starter;
		global.audio_loop = audio_play_sound(global.audio_stream, 1, true);
		global.is_playing = true;
		show_debug_message("playing ogg");
		show_debug_message(global.audio_len);
	}
	
	else if(global.filetype == "wav")
	{
		audio_buffer = buffer_load(global.audio_path);
		buffer_sound = audio_create_buffer_sound(audio_buffer,buffer_u8,44100,0,buffer_get_size(audio_buffer),audio_stereo);
		global.audio_len = audio_sound_length(buffer_sound)/2;
		global.is_loaded = true;
		show_debug_message("we loaded " + global.audio_path);
		global.string_beatmap = global.string_starter;
		global.audio_loop = audio_play_sound(buffer_sound, 1, true);
		global.is_playing = true;
		show_debug_message(global.audio_len);
		
	}
}

