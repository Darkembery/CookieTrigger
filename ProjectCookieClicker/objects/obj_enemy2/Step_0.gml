#region segue player e detecta se pode atirar
depth = -y;

if can_follow and instance_exists(obj_player) and !global.pause
{
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

if global.pause
move_speed = 0

if distance_to_object(obj_player) <= 125 and !flashing and obj_player.can_take_damage
{
	move_speed = 0;	
	can_aim = true;
	
}

else if distance_to_object(obj_player) > 125
{
	move_speed = 1	
	can_aim = false;
}
#endregion
if global.pause exit
#region tiro
if (can_aim)
{
	with gun
	{
		can_aim = true;	
	}
}

else if (!can_aim)
{
	with gun
	{
		can_aim = false
	}	
}
#endregion

#region morte
if (hp <= 0)
{
	global.timer += timer_reward
	global.enemy2_kills++
	instance_destroy();
}

if flashing
{
	image_blend = c_gray
	can_collide = false
	move_speed = 0
	//sprite_index = spr_enemy1_1; // trocar por imagem branca	
}

else if !flashing
{
	move_speed = 1;
	can_collide = true;
	image_blend = c_white
}

if (image_xscale != 1)
image_xscale = lerp(image_xscale, 1, 0.1)

if (image_yscale != 1)
image_yscale = lerp(image_yscale, 1, 0.1)
#endregion

#region colissão com o player = dano.
if place_meeting(x, y, obj_player)
{
	if (can_collide) and obj_player.can_take_damage
{
global.timer -= damage_to_player
can_follow = false;
can_collide = false;
alarm[1] = 30;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)
screenshake(5,5)


with obj_player
{
alarm[1] = 60
can_take_damage = false;
		}
	}	
}
#endregion
