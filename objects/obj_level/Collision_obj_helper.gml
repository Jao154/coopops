//deleta o checkpoint
if file_exists("checkpoint.ini")
{
	file_delete("checkpoint.ini")
}

if !instance_exists(obj_transicao)
{
	var _trans = (obj_transicao)
	instance_create_depth(0,0,0, _trans)
	_trans.dest = destiny
}	