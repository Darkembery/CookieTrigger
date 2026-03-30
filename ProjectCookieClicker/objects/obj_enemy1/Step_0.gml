if can_follow and instance_exists(obj_player) and obj_player.can_take_damage
{
	move_towards_point(obj_player.x, obj_player.y, move_speed)	
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

if place_meeting(x, y, obj_player)
{
	if (can_collide)
{
global.timer -= damage_to_player
move_speed = 0
can_follow = false;
can_collide = false;
alarm[1] = 60;
knockback_x = sign(x - other.x)
knockback_y = sign(y - other.y)


with obj_player
{
image_alpha = 0.5
alarm[1] = 90
can_take_damage = true;
	}
}	
}
