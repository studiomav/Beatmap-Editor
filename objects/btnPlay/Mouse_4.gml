if(global.is_loaded)
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