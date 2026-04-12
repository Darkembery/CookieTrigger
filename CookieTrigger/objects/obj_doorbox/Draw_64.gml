if global.pause exit
draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)
draw_set_alpha(alpha)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if (can_show) and room == room_game
{
	if text <= 9999
    draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the kitchen.");
	else if text > 9999
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the hell.");
}

else if (!can_show) and room == room_game
{
	if text <= 9999
    draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the kitchen.");
	else if text >=  9999
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the hell.");
}

else if (can_show) and room == room_kitchen
{	if text <= 9999
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the hunt.")	
	else if text > 9999
	draw_text(view_wport / 2, view_hport / 2 + 128, 
	"What's the point with all of this?\nI Want to be free.")
}

else if (!can_show) and room == room_kitchen
{
	if text <= 9999 
	draw_text(view_wport / 2, view_hport / 2 + 128, "Press E to return to the hunt.")	
	else if text > 9999
	draw_text(view_wport / 2, view_hport / 2 + 128, 
	"What's the point with all of this?\nI Want to be free.")
}

draw_set_alpha(1)
draw_set_valign(-1)
draw_set_halign(-1)

