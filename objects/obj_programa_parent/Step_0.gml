/// @description
//Checando se já tem um objeto embaixo desse
var _ocupado = place_meeting(x,y,obj_programa_parent)

//Seguindo o mouse se eu estou em cima dele
if position_meeting(mouse_x, mouse_y, id) {
	if mouse_check_button(mb_left)
	{	
		seg = 1;
		//Apaga o icone se está com a lixeira ativada
		if obj_mouse.eraser
		{
			instance_destroy(id)
			obj_mouse.eraser = 0
			obj_control.lixeira--
		}
	}
}

if (seg = 1)
{
		//Se movendo na grid
		var _x = (mouse_x div tam) * tam
		var _y = (mouse_y div tam) * tam
	
		x = _x
		y = _y
}

if mouse_check_button_released(mb_left)
	{
		seg = 0
		if (_ocupado)
		{
				x = last_x
				y = last_y	
		} else {
			last_x = x
			last_y = y
		}
}

		if (_ocupado)
			{
				image_blend = c_red
					
		} else image_blend = c_white