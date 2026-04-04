if room == room_credits or room == room_settings
fastfade(room_startmenu, 15, c_black)
else
game_end();
audio_play_sound(sfx_confirmmenu, 1, 0, global.volume)

//global.exit_trys++
//instance_create_layer(x, y, "Instances", obj_webexit)