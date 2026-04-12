#region Movimentação
mask_index = spr_playerwalkkitchen
if global.pause exit
switch (current_state)
{
	case player_state_kitchen.idle:
	sprite_index = spr_playeridle
	break
	
	case player_state_kitchen.walk:
	sprite_index = spr_playerwalk
	break
}
if (global.can_act)
{
var mx = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")))

var my = (keyboard_check(ord("S"))) - (keyboard_check(ord("W")))

var len = point_distance(0, 0, mx, my);


if (len > 0)
{
    mx /= len;
    my /= len;
}

if (keyboard_check(ord("D"))) or (keyboard_check(ord("A"))) or (keyboard_check(ord("S"))) or (keyboard_check(ord("W")))
{
	is_moving = true;
}

else
{
	is_moving = false;	
}

 if !global.can_act
{
current_state = player_state_kitchen.idle;
}

if is_moving
{
current_state = player_state_kitchen.walk;
}

else
{
current_state = player_state_kitchen.idle;	
}


x += mx * move_speed;
y += my * move_speed;
}
#endregion
#region Spawn biscoito na mão
if (global.cookies > 0) and (!instance_exists(obj_cookiehand))
instance_create_layer(x - 18, y + 14, "Bullets", obj_cookiehand);

if (global.cookies == 0) and (instance_exists(obj_cookiehand))
instance_destroy(obj_cookiehand);

global.cookies_existentes = instance_number(obj_cookie)

if global.reload_cooldown > 0
global.reload_cooldown--
#endregion

#region dano
if !can_take_damage
{
image_alpha = 0.5	
}
else
{
image_alpha = 1
}
#endregion

#region amassadinha

#endregion