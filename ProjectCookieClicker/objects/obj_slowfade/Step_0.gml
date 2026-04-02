if (state == 0) 
{
	timer += 0.1;
	
	if (timer >= duration)
	{
		room_goto(targetroom);
		global.can_act = true;
		state = 1;
	}
}

else
{
	if (state == 1)
	{
		timer -= 1;
		
		if timer <= 0
		{
			if room == room_game or targetroom == room_game and can_run
			{
			alarm[0] = 10;
			can_run = false;
			}
			else
			instance_destroy();
		}	
	}
}

alpha = timer/duration;
depth = -100;