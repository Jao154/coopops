//se o sprite ta verde, não salve.
if (image_index == 5) exit

//animando
image_speed = 6;

obj_mouse.drag_uses = 10;

//salvando posições
 ini_open("checkpoint.ini")
 
 
 if (global.paint)
 {
	ini_write_real("paint","uses",global.paint_uses) 
 }
 
 if (instance_exists(obj_helper))
 {
	ini_write_real("helper","x",other.x);
	ini_write_real("helper","y",other.y);
 }
 
 
 if (instance_exists(obj_icon1))
	{
		ini_write_real("icon1","x",obj_icon1.x);
		ini_write_real("icon1","y",obj_icon1.y);
	}
 
 if (instance_exists(obj_icon2))
 {
	ini_write_real("icon2","x",obj_icon2.x);
	ini_write_real("icon2","y",obj_icon2.y);
 }
 
 if (instance_exists(obj_move))
 {
	ini_write_real("move","x",obj_move.x)
	ini_write_real("move","y",obj_move.y)
 }
 
 if (instance_exists(obj_key))
 {
	ini_write_real("key","x",obj_key.x)
	ini_write_real("key","y",obj_key.y)
 }
 
 ini_close();