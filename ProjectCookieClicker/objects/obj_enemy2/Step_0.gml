#region segue player e detecta se pode atirar
if global.pause exit
if (can_follow)
{
	move_towards_point(obj_player.x - 125, obj_player.y - 125, move_speed)	
}

if distance_to_object(obj_player) <= 125
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
	//sprite_index = spr_enemy1_1; // trocar por imagem branca	
}

else if !flashing
{
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
alarm[1] = 60;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)
screenshake(5)


with obj_player
{
alarm[1] = 90
can_take_damage = false;
		}
	}	
}
#endregion
