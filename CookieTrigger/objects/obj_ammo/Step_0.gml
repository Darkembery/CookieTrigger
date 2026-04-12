#region limitador de cookies
depth = -9999999
if global.pause exit
if global.cookies >= 3
{
	global.cookies = 3
	global.can_collect_cookies = false;
	instance_destroy(obj_cookie)
}

else if global.cookies == 2 and global.cookies_existentes < 2
{
	global.can_collect_cookies = true;	
}

else if global.cookies == 3 and global.cookies_existentes > 0
{
	instance_destroy(obj_cookie)	
}

#endregion