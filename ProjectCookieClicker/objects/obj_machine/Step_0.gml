if (place_meeting(x, y, obj_player))
{
can_show = true;

if (can_show) and (!instance_exists(obj_upgrade))
{
    alpha = lerp(alpha, 1, 0.08)
}

else if (can_show) and (instance_exists(obj_upgrade))
{
	alpha = lerp(alpha, 0, 0.08)
}

	if keyboard_check_pressed(ord("E"))
	{
		if (!instance_exists(obj_upgrade))
		{
		instance_create_layer(680, 51, "Player", obj_upgrade)
		}
	}
}

else if (!place_meeting(x, y, obj_player))
{
can_show = false;	
alpha = lerp(alpha, 0, 0.08)
}
