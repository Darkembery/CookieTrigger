if global.pause exit
draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)
draw_set_alpha(alpha)

if (can_show) and (show_options)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
	
	if (!instance_exists(obj_layer))
	instance_create_layer(0, 0, "Instances", obj_layer)
	if text <= 99
    draw_text(view_wport / 2, view_hport / 2 + 256, ""); 
	
	else if text > 99
	{
	draw_set_colour(#84563C)
	draw_text(view_wport / 2, view_hport / 2 + 256, "Cookies."); 
	}
	
}

else if (can_show)
{
	if (instance_exists(obj_layer))
	instance_destroy(obj_layer);
	draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Talk. . ."); 
}

else if (!can_show)
{
	if (instance_exists(obj_layer))
	instance_destroy(obj_layer);
	draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_set_color(c_white);
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E To Talk. . ."); 
}	

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);
draw_set_alpha(1)

