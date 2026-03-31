if (place_meeting(x, y, obj_player))
{
can_show = true;
if keyboard_check_pressed(ord("E"))
{
if room == room_game
{
	fade(room_kitchen, 15, c_black)
}

else if room == room_kitchen
{
	fade(room_game, 15, c_black)	
		}
	}
}

else
can_show = false;