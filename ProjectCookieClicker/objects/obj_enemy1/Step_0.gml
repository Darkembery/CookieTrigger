#region segue player e morte.

depth = -y;

if can_follow and instance_exists(obj_player) and !global.pause
{
if (obj_player > x) 
{
    image_angle += 5
}

else
{
	image_angle -= 5
}

var _spd = move_speed; 
var _separation_speed = 0.5; 
var _dir = point_direction(x, y, obj_player.x, obj_player.y);

var _hspd = lengthdir_x(_spd, _dir);
var _vspd = lengthdir_y(_spd, _dir);

var _other = instance_place(x, y, obj_enemyall);

if (_other != noone) {
    var _push_dir = point_direction(_other.x, _other.y, x, y);
    
    _hspd += lengthdir_x(_separation_speed, _push_dir);
    _vspd += lengthdir_y(_separation_speed, _push_dir);
}

x += _hspd;
y += _vspd;
}

else
{
	move_speed = 0;	
}

if (hp <= 0)
{
	global.timer += timer_reward
	global.enemy1_kills++
	instance_destroy();
}
#endregion


#region piscando se tomar dano.
if flashing
{
	can_collide = false
	move_speed = 0
	sprite_index = spr_enemy1hit; // trocar por imagem branca	
}

else if !flashing
{
	can_collide = true;
	move_speed = 1.4
	sprite_index = spr_enemy1
}

if (image_xscale != 2)
image_xscale = lerp(image_xscale, 2, 0.1)

if (image_yscale != 2)
image_yscale = lerp(image_yscale, 2, 0.1)
#endregion

#region colisão com o player
if place_meeting(x, y, obj_player)
{
	if (can_collide) and obj_player.can_take_damage
{
global.timer -= damage_to_player
audio_play_sound(sfx_playerhit, 1, 0, global.volume)
can_follow = false;
can_collide = false;
alarm[1] = 30;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)
var points = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_timerlosepoints)
points.value = damage_to_player
screenshake(5, 5)

with obj_player
{
alarm[1] = 60
can_take_damage = false;
		}
	}	
}
#endregion
