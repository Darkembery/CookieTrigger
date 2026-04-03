draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_alpha(alpha)


if mouse_in
draw_set_colour(c_yellow)
else
draw_set_colour(c_white)


draw_text(x, y, "Settings")

draw_set_valign(-1)
draw_set_halign(-1)
draw_set_colour(c_white)
draw_set_alpha(1)