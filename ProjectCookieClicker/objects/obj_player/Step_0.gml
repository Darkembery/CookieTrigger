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