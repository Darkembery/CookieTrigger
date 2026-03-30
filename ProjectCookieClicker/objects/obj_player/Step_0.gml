var mx = (keyboard_check(ord("D"))) - (keyboard_check(ord("A")))

var my = (keyboard_check(ord("S"))) - (keyboard_check(ord("W")))

var len = point_distance(0, 0, mx, my);


if (len > 0)
{
    mx /= len;
    my /= len;
}


x += mx * move_speed;
y += my * move_speed;

if (global.cookies > 0) and (!instance_exists(obj_cookiehand))
instance_create_layer(x - 18, y + 14, "Player", obj_cookiehand);


if (global.cookies == 0) and (instance_exists(obj_cookiehand))
instance_destroy(obj_cookiehand);

global.cookies_existentes = instance_number(obj_cookie)

if global.reload_cooldown > 0
global.reload_cooldown--