if global.pause exit
draw_set_font(font_hudBoldBig)
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_set_alpha(alpha)

if (can_show) and (!instance_exists(obj_upgrade))
{
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Open Upgrade Menu"); 
}

else if (can_show) and (instance_exists(obj_upgrade))
{
	draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Open Upgrade Menu"); 
}

else if (!can_show)
{
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Open Upgrade Menu"); 
}	

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);
draw_set_alpha(1)

