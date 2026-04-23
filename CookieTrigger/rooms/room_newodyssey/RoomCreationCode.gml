instance_create_layer(0,0,"Instances", obj_fadeout_white)
instance_create_layer(0,0,"Instances", obj_saveandload)
if (!instance_exists(obj_cursor))
instance_create_layer(mouse_x, mouse_y, "Cursor", obj_cursor)

window_set_cursor(cr_none)
cursor_sprite = -1

var _os_lang = os_get_language();


if (_os_lang == "pt") or (_os_lang == "pt-BR")
or (_os_lang == "PT-BR") or (_os_lang == "pt-br")
{
    global.current_language = language.ptbr
} 

else 
{
   
    global.current_language = language.en
}