draw_self();
if global.pause exit
draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)

if (can_show) and (show_options)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(view_wport / 2, view_hport / 2 + 256, "..."); 
}

else if (can_show)
{
	draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Talk. . ."); 
}

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);


