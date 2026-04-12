draw_set_font(font_hudBoldSmallSmall)
#region Detecta munição atual, e muda a cor do texto de acordo com esse valor.
if (global.bullets > 15)
{
	draw_set_colour(c_white)
	draw_text(20, 300, "Ammo: " + string(global.bullets) + " / " + string(global.bullets_per_cookie))
}
else if (global.bullets == 15) or (global.bullets == 14) 
		or (global.bullets == 13) or (global.bullets == 12)
		or (global.bullets == 11)
{
	draw_set_colour(c_yellow)
	draw_text(20, 300, "Ammo: " + string(global.bullets) + " / " + string(global.bullets_per_cookie))
}

else if (global.bullets <= 10)
{
	draw_set_colour(c_red)
	draw_text(20, 300, "Ammo: " + string(global.bullets) + " / " + string(global.bullets_per_cookie))
}


if global.cookies > 1
draw_set_colour(c_white)
else if global.cookies == 1
draw_set_colour(c_yellow)
else if global.cookies == 0
draw_set_colour(c_red)

draw_text(20, 320, "Cookies: " + string(global.cookies) + " / " + string(3))

draw_set_colour(c_white)
#endregion