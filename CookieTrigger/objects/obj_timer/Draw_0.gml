//mostra o timer, e se é igual a 0, então acabou.
draw_set_font(font_hudBoldSmall)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
var _x = room_width / 2
var _y = 40
if global.timer <= 0
{
draw_set_colour(c_yellow)
draw_text(_x, _y,
		 "")
}

else if global.timer <= 10
{
draw_set_colour(c_red)
draw_text(_x, _y,
		 "Hunting Timer: " + string(global.timer) + "/" + string(120))
}

else if global.timer > 10
{
draw_set_colour(c_white)	
draw_text(_x, _y,
		 "Hunting Timer: " + string(global.timer) + "/" + string(120))
}
		 
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_colour(c_white)

