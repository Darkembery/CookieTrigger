instance_create_layer(0, 0, "Instances", obj_fadeout);
instance_create_layer(0,0,"Instances", obj_audiovolume)
if (!audio_is_playing(msc_mainmenu))
audio_play_sound(msc_mainmenu, 1, 1, global.volume - 0.05);