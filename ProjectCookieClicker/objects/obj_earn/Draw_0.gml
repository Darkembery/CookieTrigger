draw_set_font(font_hudBoldSmall)
draw_set_alpha(alpha)

if (instance_exists(obj_sellall))
{
if obj_sellall.sell
{
draw_set_colour(c_lime)	
draw_text(x, y, "+ " + string(value))
}

else if !obj_sellall.sell
{
draw_set_colour(c_red)
draw_text(x, y, "You Can't Sell Nothing")
	}
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);
draw_set_alpha(1)