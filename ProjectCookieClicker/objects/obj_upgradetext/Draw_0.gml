draw_set_font(font_hudBoldSmall)
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
    draw_text(x, y - 32, "Weapon Damage");
    draw_text(x, y + 10, "Increases the\nweapon's damage.");
} 
else if (button2_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_text(x, y - 32, "Hunting Time");
    draw_text(x - 4, y + 10, "Increases the\nhunting time.");
} 
else if (button3_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_text(x, y - 32, "Shot Cooldown");
    draw_text(x, y + 10, "Reduces the\nshot cooldown.");
} 
else if (button4_sel) 
{
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
    draw_set_colour($3C5684); 
    draw_text(x, y - 32, "Cookies!");
	draw_set_colour(c_white)
    draw_text(x - 4, y + 10, "Increases the ammo\nper cookie.");
}

}




draw_set_colour(c_white)
draw_set_valign(-1)
draw_set_halign(-1)
draw_set_alpha(1)