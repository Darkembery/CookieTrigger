instance_create_layer(0, 0, "Instances", obj_fadeout);
instance_create_layer(0,0,"Instances", obj_audiovolume)
audio_stop_all();
audio_play_sound(msc_kitchen, 1, 1, global.volume);
//scr_load_all();