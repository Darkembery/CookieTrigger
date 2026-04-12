//reduz o tempo de acordo com o dano, reseta velocidade, não pode seguir, dá knockback e reinicia.
if global.pause exit
if (other.can_take_damage)
{
global.timer -= owner.owner.damage_to_player 
screenshake(5, 5)
var points = instance_create_layer(x, y, "Instances", obj_timerlosepoints)
points.value = obj_enemy2.damage_to_player
audio_play_sound(sfx_playerhit, 1, 0, global.volume)

with other
{
//não pode tomar dano.
alarm[1] = 60
can_take_damage = false;
	}
}
instance_destroy();