if keyboard_check(vk_escape) or keyboard_check(vk_backspace)
{
	if value > 0
	value--
	
	if value == 0
	{
	audio_stop_sound(msc_kitchen)
	audio_stop_sound(msc_game__3_)
	fastfade(room_startmenu, 20, c_black)
	}
}

if keyboard_check_released(vk_escape)
value = 40