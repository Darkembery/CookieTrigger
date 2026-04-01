draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)

draw_text(x, y, "Cash: " + string(global.cash))

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);
draw_set_alpha(1)