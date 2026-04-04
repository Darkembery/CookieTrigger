draw_set_font(font_hudBoldBig)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if can_show
{
if room == room_game
draw_text(view_wport / 2, view_hport / 2 - 200, "Volume: "
+ string(global.volume * 100))
else
draw_text(view_wport / 2, view_hport / 2 - 256, "Volume: "
+ string(global.volume * 100))
}

draw_set_valign(-1)
draw_set_halign(-1)