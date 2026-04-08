if code_value > 9
code_value = 0;

if code_value == 0
{
	if keyboard_check_pressed(vk_up)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}

else if code_value == 1
{
	if keyboard_check_pressed(vk_up)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}

else if code_value == 2
{
	if keyboard_check_pressed(vk_down)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 3
{
	if keyboard_check_pressed(vk_down)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 4
{
	if keyboard_check_pressed(vk_left)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 5
{
	if keyboard_check_pressed(vk_right)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 6
{
	if keyboard_check_pressed(vk_left)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 7
{
	if keyboard_check_pressed(vk_right)
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 8
{
	if keyboard_check_pressed(ord("B"))
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}
else if code_value == 9
{
	if keyboard_check_pressed(ord("A"))
	code_value++
	show_debug_message("Code_value: "  + string(code_value))
}

else
{
code_value = 0;	
}

if code_value == 10
{
global.debug = !global.debug	
code_value = 0
if global.debug == true
show_debug_message("Debug Ativado")
else
show_debug_message("Debug Desativado")
}