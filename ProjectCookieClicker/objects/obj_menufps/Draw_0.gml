draw_set_font(font_hudBoldSmall)
draw_set_colour(c_white)
draw_set_valign(fa_center)
draw_set_halign(fa_middle)

if mouse_in
draw_set_colour(c_yellow)
else
draw_set_colour(c_white)

if global.fps
draw_text(x, y, "FPS: Active")
else
draw_text(x, y, "FPS: Disabled")

draw_set_valign(-1)
draw_set_halign(-1)
