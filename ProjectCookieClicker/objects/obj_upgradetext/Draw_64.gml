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
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.damage) + " -> " + string(global.damage + 5))
} 

else if (button2_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Hunting Time");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Increases the\nhunting time.");
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.timer_start_value) + " -> " + string(global.timer_start_value + 10)) 
} 
else if (button3_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_colour(c_yellow)
    draw_text(view_wport / 2 - 300, view_hport - 512, "Shot Cooldown");
draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380, "Reduces the\nshot cooldown.");
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.fire_cooldown_max) + " -> " + string(global.fire_cooldown_max - 5))
} 
else if (button4_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_set_colour($3C5684); 
    draw_text(view_wport / 2 - 300, view_hport - 512,"Cookies!");
	draw_set_colour(c_white)
    draw_text(view_wport / 2 - 300, view_hport - 380,"Increases the ammo\nper cookie.");
	draw_text(view_wport / 2 - 300, view_hport - 256, string(global.bullets_per_cookie) + " -> "  + string(global.bullets_per_cookie + 10))
	}
}

draw_set_colour(c_white)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_alpha(1)