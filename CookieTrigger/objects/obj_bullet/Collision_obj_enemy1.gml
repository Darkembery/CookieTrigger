with other
{
	hp = hp - global.damage	
	audio_play_sound(sfx_enemyhit, 1, 0, global.volume)
	flashing = true;
	var alarm0 = random_range(7.5, 15)
	alarm[0] = alarm0;
	image_xscale = 0.8
	image_yscale = 1.6
	var damage = instance_create_layer(other.x, other.y, 
	"Instances", obj_timerlosepoints)
	damage.value = global.damage
	damage.color = c_white
}



instance_destroy();