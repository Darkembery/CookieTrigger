draw_self();

draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)


if (can_show)
{
	draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E to return to the kitchen."); 
}
