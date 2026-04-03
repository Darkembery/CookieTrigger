draw_self();
draw_set_font(font_hudBoldSmall)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if global.damage_upgrade_level == global.damage_upgrade_max_level
draw_set_colour(c_yellow)

else
draw_set_colour(c_white)	

draw_text(x, y + 48, string(global.damage_upgrade_level) + " / "
+ string(global.damage_upgrade_max_level))

draw_set_font(font_hudBoldSmall_1)
if (global.damage_upgrade_level == global.damage_upgrade_max_level)
draw_text(x, y + 68, "Max Level")
else
draw_text(x, y + 68, "Price: " + format_number(value))

draw_set_colour(c_white)
draw_set_valign(-1)
draw_set_halign(-1)