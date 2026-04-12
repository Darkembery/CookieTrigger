if room == room_kitchen
audio_master_gain(global.volume)
else
audio_master_gain(global.volume)

default_volume = global.volume

if keyboard_check_pressed(189) or (keyboard_check_pressed(vk_subtract))
{
can_show = true;
if global.volume > 0
global.volume -= 0.05
if global.volume < 0
global.volume = 0.0;
audio_play_sound(sfx_soundtest, 1, 0, global.volume)
alarm[0] = 45
}

if keyboard_check_pressed(187) or keyboard_check_pressed(vk_add)
{
can_show = true;
if global.volume < 1
global.volume += 0.05
if global.volume > 1
global.volume = 1;
audio_play_sound(sfx_soundtest, 1, 0, global.volume)
alarm[0] = 45
}

if reduce
{
volume = lerp(volume, 0, 0.02);	
if volume == 0
{
global.volume = default_volume
volume = default_volume
reduce = false;
	}
}