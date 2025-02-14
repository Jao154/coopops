room_restart();
if (file_exists("checkpoint.ini"))
{
	ini_open("checkpoint.ini")
	global.paint_uses = ini_read_real("paint","uses",global.paint_uses)
	if (instance_exists(obj_helper))
	{
		obj_helper.key = ini_read_real("key","bool",obj_helper.key)
	}
	ini_close();
}