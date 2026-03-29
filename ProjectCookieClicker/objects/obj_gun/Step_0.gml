if (instance_exists(obj_player)) {

    // Posiciona a arma no player
    x = obj_player.x + 18;
    y = obj_player.y + 14;

    // Giro instantâneo pro mouse
    image_angle = point_direction(x, y, mouse_x, mouse_y);

    // Mantém sprite da arma normal
    image_xscale = 1;
    image_yscale = 1;

    if (fire_cooldown > 0) fire_cooldown--;

    if (mouse_check_button(mb_left) && fire_cooldown <= 0) {
        var b = instance_create_depth(x, y, 5, obj_bullet);
        b.speed = bullet_speed;
        b.direction = point_direction(x, y, mouse_x, mouse_y);
        b.image_angle = b.direction;

        fire_cooldown = fire_cooldown_max;
    }
}