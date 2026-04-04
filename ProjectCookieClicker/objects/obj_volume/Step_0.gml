if global.volume >= 1
global.volume = 1

else if global.volume <=0
global.volume = 0;

if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
{
	if global.volume > 0
	global.volume -= 0.05
	audio_play_sound(sfx_soundtest, 1, 0)
}

if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
{
	if global.volume < 1
	global.volume += 0.05
	audio_play_sound(sfx_soundtest, 1, 0)
}