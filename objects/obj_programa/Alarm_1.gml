
//se acabou a animação
if !instance_exists(obj_transicao)
{
	var _trans = (obj_transicao)
	instance_create_depth(0,0,0, _trans)
	_trans.dest = rm_menu

}	