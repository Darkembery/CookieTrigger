global.fullscreen = !global.fullscreen;

if (global.fullscreen) 
{
    window_enable_borderless_fullscreen(true);
    window_set_fullscreen(true);
} 
else 
{
    window_set_fullscreen(false);
    window_enable_borderless_fullscreen(false);
    window_set_size(1280, 720); 
    window_center();
}