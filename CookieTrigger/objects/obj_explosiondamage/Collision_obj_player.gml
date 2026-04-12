if instance_exists(owner)
{
if (can_collide_p) and obj_player.can_take_damage
{
global.timer -= damage
audio_play_sound(sfx_playerhit, 1, 0, global.volume)
can_follow = false;
can_collide = false;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)
var points = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_timerlosepoints)
points.value = damage
screenshake(2, 3)
can_collide_p = false;
with obj_player
{
alarm[1] = 45
can_take_damage = false;
		}
	}
}