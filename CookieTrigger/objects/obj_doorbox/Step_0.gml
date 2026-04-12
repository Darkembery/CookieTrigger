if global.pause exit
if (place_meeting(x, y, obj_player)) or (place_meeting(x, y, obj_playerkitchen))
{
can_show = true;
alpha = lerp(alpha, 1, 0.08)

if keyboard_check_pressed(ord("E"))
{
if room == room_game
{
	//audio_stop_sound(noone)
	fade(room_kitchen, 15, c_black)
}

else if room == room_kitchen
{
	audio_stop_all();
	fade(room_game, 15, c_black)	
		}
	}
}

else
{
can_show = false;
alpha = lerp(alpha, 0, 0.1);
}