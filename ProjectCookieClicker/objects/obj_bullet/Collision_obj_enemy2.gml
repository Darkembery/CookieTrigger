with other
{
hp = hp - global.damage	
	audio_play_sound(sfx_enemyhit, 1, 0, global.volume)
	flashing = true;
	var alarm0 = random_range(7.5, 15)
	alarm[0] = alarm0;
	image_xscale = 1.4
	image_yscale = 1.9
	var damage = instance_create_layer(other.x, other.y, 
	"Instances", obj_timerlosepoints)
	damage.value = global.damage
	obj_enemy2gun.shoot_cooldown = irandom_range(60, 75)
}
instance_destroy();