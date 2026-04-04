 #region Código base da arma. Trava no player, atira, e tem o cooldown. 
 if global.pause exit
 if (instance_exists(obj_player))
{
    x = obj_player.x + 18;
    y = obj_player.y + 14;

var _angle = point_direction(x, y, mouse_x, mouse_y);


image_angle = _angle;


if (mouse_x > x) 
{
    image_yscale = 1;
} 

else
{
    image_yscale = -1;
}
	
	//reload
	if (keyboard_check_pressed(ord("R")))
	{
		reload();
	}
	
    if (global.fire_cooldown > 0)
	global.fire_cooldown--;

	//tiro
    if (mouse_check_button(mb_left) 
		and global.fire_cooldown <= 0 
		and global.bullets > 0)
		{
        var b = instance_create_depth(x, y, 5, obj_bullet);
		screenshake(3, 5);
		if can_play
		{
		audio_play_sound(sfx_playergun, 1, 0, global.volume)
		can_play = false;
		alarm[0] = 8
		}
        b.speed = global.bullet_speed;
        b.direction = point_direction(x, y, mouse_x, mouse_y);
        b.image_angle = b.direction;
        global.fire_cooldown = global.fire_cooldown_max;
		global.bullets--
    }
	
	else if (mouse_check_button(mb_left)) and global.bullets == 0 and global.cookies > 0
	{
		reload();
	}
	
}

else 
{
	instance_destroy();	
}
#endregion


