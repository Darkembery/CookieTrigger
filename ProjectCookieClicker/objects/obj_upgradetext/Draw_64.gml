draw_set_font(font_hudBoldBig)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_white)
draw_set_alpha(alpha)
if can_show
{

draw_set_colour(c_white);

if (button1_sel)
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Weapon Damage");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380 , "Increases the\nweapon's damage.");
	if global.damage_upgrade_level < 10
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.damage) + " -> " + string(global.damage + 1.2))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 256, "Max")
	}
}

else if (button2_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Hunting Time");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Increases the\nhunting time.");
	
	if global.timer_upgrade_level < 10
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.timer_start_value) + " -> " + string(global.timer_start_value + 5)) 
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 256, "Max")
	}
} 
else if (button3_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Shot Cooldown");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Reduces the\nshot cooldown.");
	if global.cooldown_upgrade_level < 10
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.fire_cooldown_max) + " -> " + string(global.fire_cooldown_max - 1.8))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 256, "Max")
	}
} 
else if (button4_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_set_colour($3C5684); 
    draw_text(view_wport / 2 - 300, view_hport - 512,"Cookies!");
	draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380,"Increases the ammo\nper cookie.");
	if global.ammopc_upgrade_level < 10
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.bullets_per_cookie) + " -> "  + string(global.bullets_per_cookie + 5))
	else
	{
	draw_set_colour(c_yellow)
	draw_text(view_wport / 2 - 300, view_hport - 256, "Max")
		}
	}
}

draw_set_colour(c_white)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_alpha(1)