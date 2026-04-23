draw_set_font(font_hudBoldSmallSmall)
draw_set_alpha(alpha)
if global.current_language == language.en
draw_text(x, y, "Use Arrow Keys to change volume..")
else if global.current_language == language.ptbr
draw_text(x, y, "Use as setas para mudar o volume..")


draw_set_alpha(1)