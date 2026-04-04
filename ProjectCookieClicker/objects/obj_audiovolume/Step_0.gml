audio_master_gain(global.volume)

if keyboard_check_pressed(189) or (keyboard_check_pressed(vk_subtract))
{
can_show = true;
if global.volume > 0
global.volume -= 0.05
audio_play_sound(sfx_soundtest, 1, 0, global.volume)
alarm[0] = 45
}

if keyboard_check_pressed(187) or  keyboard_check_pressed(vk_add)
{
can_show = true;
if global.volume < 1
global.volume += 0.05
audio_play_sound(sfx_soundtest, 1, 0, global.volume)
alarm[0] = 45
}