if (place_meeting(x, y, obj_playerkitchen))
{
if room == room_kitchen
{
fastfade(room_devs, 15, c_black)
}
else
{
fastfade(room_kitchen, 15, c_black)
}

audio_stop_all();
}