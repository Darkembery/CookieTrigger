#region segue player e morte.
depth = -y;

switch (current_state)
{
    case enemy4_state.follow:
        can_follow = true;
        if (!flashing) move_speed = 1.4; 
    break;
    
    case enemy4_state.explosion:
        can_follow = false;
        move_speed = 0;
		image_angle = 90
        
        if (sprite_index != spr_enemy4explosion)
		{
            sprite_index = spr_enemy4explosion;
            image_index = 0; 
        }
        
        if can_play
		{ 
			can_play = false;
            audio_play_sound(sfx_enemy4explosion, 5, false, global.volume - 0.15);
        }
        
        if (floor(image_index) == image_number - 4)
		{
            screenshake(8, 2);
            var explosion = instance_create_layer(x, y, "Cursor", obj_explosiondamage);
            explosion.owner = id;
			explosion.damage = damage_to_player
        }
        
        if (image_index >= image_number - 1) 
		{
            instance_destroy();
        }
    break;
}

if (can_follow && instance_exists(obj_player) && !global.pause)
{
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    image_angle = _dir + 90;

    var _hspd = lengthdir_x(move_speed, _dir);
    var _vspd = lengthdir_y(move_speed, _dir);

    var _other = instance_place(x, y, obj_enemyall);
    if (_other != noone) {
        var _push_dir = point_direction(_other.x, _other.y, x, y);
        _hspd += lengthdir_x(0.5, _push_dir);
        _vspd += lengthdir_y(0.5, _push_dir);
    }

    x += _hspd;
    y += _vspd;
}

if distance_to_object(obj_player) <= 25
current_state = enemy4_state.explosion

if (hp <= 0 && current_state != enemy4_state.explosion) and !place_meeting(x, y, obj_explosiondamage)
{
    global.enemy4_kills++;
	instance_create_layer(x, y, "HUD", obj_deatheffect)
	instance_destroy(self);
}

else if (hp <= 0 && place_meeting(x, y, obj_explosiondamage))
{
current_state = enemy4_state.explosion
}
#endregion

#region piscando se tomar dano.
if (flashing) and (current_state != enemy4_state.explosion)
{
    can_collide = false;
    move_speed = 0;
    sprite_index = spr_enemy4hit; 
}
else if (current_state != enemy4_state.explosion)
{
    can_collide = true;
    sprite_index = spr_enemy4;
}

image_xscale = lerp(image_xscale, 1.5, 0.1);
image_yscale = lerp(image_yscale, 1.5, 0.1);
#endregion

#region colisão com o player
if (place_meeting(x, y, obj_player))
{
    if (can_collide && current_state != enemy4_state.explosion)
    {
        global.timer -= damage_to_player;
        audio_play_sound(sfx_playerhit, 1, 0, global.volume);
        
        can_follow = false;
        can_collide = false;
        alarm[1] = 30;
        
        var points = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_timerlosepoints);
        points.value = damage_to_player;
        
        screenshake(2, 3);
        current_state = enemy4_state.explosion;
		with obj_player
		{
			alarm[1] = 1
			can_take_damage = false;
		}
    }   
}
#endregion