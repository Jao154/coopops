if (image_index == 1)
{
	exit
}
image_index = 1;
 ini_open("checkpoint.ini")
 
 ini_write_real("helper","x",other.x);
 ini_write_real("helper","y",other.y);
 ini_write_real("icon1","x",obj_icon1.x);
 ini_write_real("icon1","y",obj_icon1.y);
 ini_write_real("icon2","x",obj_icon2.x);
 ini_write_real("icon2","y",obj_icon2.y);
 
 ini_close();