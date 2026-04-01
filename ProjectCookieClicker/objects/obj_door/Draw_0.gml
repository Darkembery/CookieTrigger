draw_self();

draw_set_font(font_hudBoldBig)
draw_set_colour(c_white)


if (can_show) and room == room_game
{
    draw_text(view_wport / 2, view_hport / 2 + 256, "Press E to return to the kitchen."); 
}
