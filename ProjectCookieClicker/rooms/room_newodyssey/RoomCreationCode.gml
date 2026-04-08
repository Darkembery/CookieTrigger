instance_create_layer(0,0,"Instances", obj_fadeout_white)
instance_create_layer(0,0,"Instances", obj_saveandload)
if (!instance_exists(obj_cursor))
instance_create_layer(mouse_x, mouse_y, "Cursor", obj_cursor)

window_set_cursor(cr_none)
cursor_sprite = -1
