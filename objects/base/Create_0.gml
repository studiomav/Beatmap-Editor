global.audio_path = "no audio loaded";
global.is_loaded = false;
global.filetype = "";
global.is_playing = false;
global.audio_percent = 0;
global.seekhead_dragging = false;
global.string_starter = "x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...x...";
global.string_beatmap = "load an ogg or wav to begin";
global.beatmap_len = string_length(global.string_beatmap);
global.current_index = 0;
global.beatmap_x = 90;
global.beatmap_y = 160;
draw_set_halign(fa_center);
draw_set_valign(fa_middle);