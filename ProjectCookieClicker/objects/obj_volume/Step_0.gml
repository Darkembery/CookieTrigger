if global.volume >= 1
global.volume = 1

else if global.volume <=0
global.volume = 0;

if keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"))
{
	global.volume -= 0.1
	//audio_play_sound
}

if keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"))
{
	global.volume += 0.1
	//audio_play_sound
}