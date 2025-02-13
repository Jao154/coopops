
if (room != rm_menu)
{
//--------CHECKPOINT--------
if (file_exists("checkpoint.ini")) //se tocar pela primeira vez
{
	ini_open("checkpoint.ini");
	
	//salva as posições do helper, icone 1 e 2, obj_move
	if instance_exists(obj_helper)
	{
		obj_helper.x = ini_read_real("helper","x",x);
		obj_helper.y = ini_read_real("helper","y",y);
	}
	if instance_exists(obj_icon1)
	{
		obj_icon1.x = ini_read_real("icon1","x",x);
		obj_icon1.y = ini_read_real("icon1","y",y);
	}
	
	if instance_exists(obj_icon2)
	{
		obj_icon2.x = ini_read_real("icon2","x",x);
		obj_icon2.y = ini_read_real("icon2","y",y);
	}
	
	if instance_exists(obj_move)
	{
		obj_move.x = ini_read_real("move","x",x);
		obj_move.y = ini_read_real("move","y",y);
	}
	if instance_exists(obj_key)
	{
		obj_key.x = ini_read_real("key","x",x);
		obj_key.y = ini_read_real("key","y",y);
	}
	ini_close();
}
else
{
	global.paint_uses = 10;
}
}
//-------SAVE DOS PROGRAMAS
//Se coletei algum programa, le o programa coletado
if file_exists("programas.ini")
{
	
	ini_open("programas.ini")
	if (global.paint)
	{
		global.paint_uses = ini_read_real("paint","uses",10);
	}
	
	if (ini_key_exists("paint","bool"))
	{
		global.paint = ini_read_real("paint","bool",false);
	}
	
	if (ini_key_exists("lixeira","bool"))
	{
		global.lixeira = ini_read_real("lixeira","bool",false);
	}
	
	if (ini_key_exists("folder","bool"))
	{
		global.folder = ini_read_real("folder","bool",false);
	}
	
	if (ini_key_exists("antivirus","bool"))
	{
		global.antivirus = ini_read_real("antivirus","bool",false);
	}
	if (ini_key_exists("cleaner","bool"))
	{
		global.cleaner = ini_read_real("cleaner","bool",false);
	}
	
	ini_close()
}