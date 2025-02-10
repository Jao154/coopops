if (file_exists("checkpoint.ini")) //se tocar pela primeira vez
{
	ini_open("checkpoint.ini");
	//salva as posições do helper, icone 1 e 2
	obj_helper.x = ini_read_real("helper","x",x);
	obj_helper.y = ini_read_real("helper","y",y);
	obj_icon1.x = ini_read_real("icon1","x",x);
	obj_icon1.y = ini_read_real("icon1","y",y);
	obj_icon2.x = ini_read_real("icon2","x",x);
	obj_icon2.y = ini_read_real("icon2","y",y);
	
	ini_close();
}