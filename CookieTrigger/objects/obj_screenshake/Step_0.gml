var cam = view_get_camera(0);

if (shake_intensity > 0.1) {
    var offset_x = random_range(-shake_intensity, shake_intensity);
    var offset_y = random_range(-shake_intensity, shake_intensity);
 
    camera_set_view_pos(cam, 0 + offset_x, 0 + offset_y);
    
    shake_intensity *= shake_decay;
} else {
    shake_intensity = 0;
    camera_set_view_pos(cam, 0, 0);
}