var _hue = (current_time / 10) % 255;

var _color = make_color_hsv(_hue, 255, 255);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_hudBold)
draw_set_alpha(0.5)

draw_text_transformed_colour(20, 80, "FPS: " + string(fps), 1.5, 1.5, 0, _color, _color, _color, _color, 1);

draw_set_colour(c_white);

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_alpha(1)