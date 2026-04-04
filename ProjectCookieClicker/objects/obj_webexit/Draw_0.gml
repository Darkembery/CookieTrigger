draw_set_font(font_hudBoldSmallSmall)
draw_self();
draw_set_alpha(alpha)

if global.exit_trys <= 5
draw_text(x, y, "Nice Try!")
else if global.exit_trys > 5
draw_text(x, y, "Stop This")

draw_set_alpha(1)