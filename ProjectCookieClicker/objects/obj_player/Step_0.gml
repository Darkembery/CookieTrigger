#region Movimentação
if global.pause exit
if (global.can_act)
{
var mx = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")))

var my = (keyboard_check(ord("S"))) - (keyboard_check(ord("W")))

var len = point_distance(0, 0, mx, my);


if (len > 0)
{
    mx /= len;
    my /= len;
	is_moving = true;
}
else
{
is_moving = false;	
}

 if !global.can_act
{
sprite_index = spr_playeridle	
}
else if is_moving = true
{
sprite_index = spr_playerwalk	
}
else if !is_moving = true
{
sprite_index = spr_playeridle	
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