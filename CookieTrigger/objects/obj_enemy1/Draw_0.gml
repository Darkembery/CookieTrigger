draw_self();
draw_set_font(font_hudBoldSmallSmall)
draw_set_colour(c_white)
if global.debug
draw_text(x, y - 16, "HP: " + string(hp))