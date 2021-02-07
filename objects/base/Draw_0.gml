draw_set_colour(c_white);
//draw_text(400,15,string(global.audio_path) + " " + string(global.audio_percent * 100) + "%");

draw_text(400,114, string(global.current_index) + "/" + string(global.beatmap_len));

var drawx = global.beatmap_x;
var drawy = global.beatmap_y;
var i;
var j = 1;

for(i = 1; i <= global.beatmap_len; i++)
{
	if (i == global.current_index)
	{
		draw_set_colour(c_gray);
	}
	
	else
	{
		draw_set_colour(c_white);
	}
	
	draw_text_transformed(drawx,drawy,string_char_at(global.string_beatmap,i),2,2,0);
	
	if(j == 32)
	{
		drawy += 40;
		drawx = global.beatmap_x;
		j = 0;
	}
	
	else
	{
		drawx += 20;
	}
	
	j++;
}