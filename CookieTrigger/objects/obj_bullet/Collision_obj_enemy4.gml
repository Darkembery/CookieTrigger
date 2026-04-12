with other
{
	if (current_state != enemy4_state.explosion)
	{
	if hp > 1
	hp = hp - global.damage	
	else
	current_state = enemy4_state.explosion
	audio_play_sound(sfx_enemyhit, 1, 0, global.volume)
	if current_state != enemy4_state.explosion
	flashing = true;
	else
	flashing = false;
	var alarm0 = random_range(7.5, 15)
	alarm[0] = alarm0;
	image_xscale = 0.9
	image_yscale = 1.4
	var damage = instance_create_layer(other.x, other.y, 
	"Instances", obj_timerlosepoints)
	damage.value = global.damage
	damage.color = c_white;
	}
	else
	instance_destroy(other);
}

instance_destroy();