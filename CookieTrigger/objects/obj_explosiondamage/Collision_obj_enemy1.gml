with other
{
	if can_collide
	{
	hp = hp - global.damage	
	if (audio_is_playing(sfx_enemyhit))
	audio_play_sound(sfx_enemyhit, 1, 0, global.volume)
	flashing = true;
	var alarm0 = random_range(7.5, 15)
	alarm[0] = alarm0;
	alarm[4] = 4
	image_xscale = 1.4
	image_yscale = 1.9
	var damage = instance_create_layer(other.x, other.y, 
	"Instances", obj_timerlosepoints)
	damage.value = global.damage
	damage.color = c_green;
	can_collide = false;
	can_reward = false;
	}
}