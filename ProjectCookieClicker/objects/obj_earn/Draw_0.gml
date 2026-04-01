draw_set_font(font_hudBoldSmall)
draw_set_alpha(alpha)

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

draw_set_alpha(1)