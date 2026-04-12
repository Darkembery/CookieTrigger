instance_create_layer(0, 0, "Instances", obj_fadeout);
if (!instance_exists(obj_cursor))
instance_create_layer(mouse_x, mouse_y, "Cursor", obj_cursor)
audio_stop_all();
audio_play_sound(msc_kitchen, 1, 1, global.volume)
//scr_load_all();