if (place_meeting(x, y, obj_player))
{
	can_show = true;
}

else
{
	can_show = false;	
}

if keyboard_check_pressed(ord("E")) and can_show
	{
		show_options = true;
		alarm[0] = 30
	}	

if can_show and show_options and s_visible
{
	
}