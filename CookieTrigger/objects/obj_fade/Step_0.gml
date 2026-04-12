if (state == 0) 
{
	timer += 0.4;
	
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
			instance_destroy();
		}	
	}
}

alpha = timer/duration;
depth = -100;