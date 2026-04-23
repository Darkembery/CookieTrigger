draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)

if global.current_language = language.en
draw_text(16, y, "Cash: " + format_number(global.cash))
else if global.current_language = language.ptbr
draw_text(16, y, "Grana: " + format_number(global.cash))


draw_set_halign(-1);
draw_set_valign(-1);
draw_set_colour(c_white);
draw_set_alpha(1)