start_game();
instance_create_layer(0, 0, "Instances", obj_fadeout)
instance_create_layer(0,0,"Instances", obj_audiovolume)
instance_create_layer(mouse_x, mouse_y, "Cursor", obj_cursor)
audio_stop_all();
audio_play_sound(msc_game, 1, 0, global.volume)