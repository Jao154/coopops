
//se acabou a animação
if !instance_exists(obj_transicao)
{
	var _trans = (obj_transicao)
	instance_create_depth(0,0,0, _trans)
	if (room == rm_remix)
	{
		if file_exists("checkpoint.ini")
		{
			file_delete("checkpoint.ini")
		}
		_trans.dest = rm_boss 
	}
	else
	{
		_trans.dest = rm_menu
	}
}	