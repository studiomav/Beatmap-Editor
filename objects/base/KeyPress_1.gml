if(global.is_loaded)
{

	if (keyboard_check_pressed(vk_left) && global.current_index > 1)
	   {
		   var newTime = global.current_pos - (global.audio_len / global.beatmap_len);
		   audio_sound_set_track_position(global.audio_loop, newTime);
		   show_debug_message("moving index left");
	   }
	   
	else if (keyboard_check_pressed(vk_right) && global.current_index < string_length(global.string_beatmap))
	   {
		   var newTime = global.current_pos + (global.audio_len / global.beatmap_len);
		   audio_sound_set_track_position(global.audio_loop, newTime);
		   show_debug_message("moving index right");
	   }
	   
	else if (keyboard_check_pressed(vk_up) && global.current_index > 32)
	   {
		   var newTime = global.current_pos - ((global.audio_len / global.beatmap_len) * 32);
		   audio_sound_set_track_position(global.audio_loop, newTime);
		   show_debug_message("moving index up");
	   }
	   
	else if (keyboard_check_pressed(vk_down) && global.current_index <= global.beatmap_len - 32)
	   {
		   var newTime = global.current_pos + ((global.audio_len / global.beatmap_len) * 32);
		   audio_sound_set_track_position(global.audio_loop, newTime);
		   show_debug_message("moving index down");
	   }
	   
	else if (keyboard_check_pressed(vk_space))
		{
			if(global.is_playing)
			{
				audio_pause_all();
				global.is_playing = false;
			}
		   
			else
			{
				audio_resume_all();
				global.is_playing = true;
			}
		}
		
	else if keyboard_check_pressed(ord("X"))
	{
		global.string_beatmap = string_delete(global.string_beatmap,global.current_index,1);
		global.string_beatmap = string_insert("x",global.string_beatmap,global.current_index);
	}
	
	else if keyboard_check_pressed(ord("O"))
	{
		global.string_beatmap = string_delete(global.string_beatmap,global.current_index,1);
		global.string_beatmap = string_insert("o",global.string_beatmap,global.current_index);
	}
	
	else if keyboard_check_pressed(190)
	{
		global.string_beatmap = string_delete(global.string_beatmap,global.current_index,1);
		global.string_beatmap = string_insert(".",global.string_beatmap,global.current_index);
	}
	
	else if keyboard_check_pressed(vk_enter)
	{
		clipboard_set_text(global.string_beatmap);
	}
}