//se o sprite ta verde, não salve.
if (image_index == 5) exit

//animando
image_speed = 6;

obj_mouse.drag_uses = 10;

//salvando posições
 ini_open("checkpoint.ini")
 
 ini_write_real("helper","x",other.x);
 ini_write_real("helper","y",other.y);
 ini_write_real("icon1","x",obj_icon1.x);
 ini_write_real("icon1","y",obj_icon1.y);
 ini_write_real("icon2","x",obj_icon2.x);
 ini_write_real("icon2","y",obj_icon2.y);
 
 ini_close();