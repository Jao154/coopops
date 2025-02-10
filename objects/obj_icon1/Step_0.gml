/// @description
//Checando se já tem um objeto embaixo desse
var _ocupado = place_meeting(x,y,obj_solid) or place_meeting(x,y,obj_helper)

//Se o mouse eata no estado de arraste
if (obj_mouse.state = "drag")
{
	//Se estou colidindo com o mouse
	if position_meeting(mouse_x, mouse_y, id) && !_ocupado
	{
		
		//se apertei o botão esquerdo
		if mouse_check_button(mb_left)
		{
			
			//se não tem nenhum item
			if obj_mouse.item = noone
			{
				
				//estou segurando aquel item
				obj_mouse.item = id	
			}
			//controla o gasto de usos
			if (obj_mouse.drag_uses > 0)
			{
				seg = 1;
			
				//se arrasta gasta um uso;
				if (obj_mouse.drag == false)
				{
					obj_mouse.drag = true;
					obj_mouse.drag_uses--;
				}
			}
	
		}
	}
	
	//se estou segurando ele
	if (seg = 1) && obj_mouse.item != noone
	{
		
			//Se movendo na grid
			var _x = (mouse_x div tam) * tam
			var _y = (mouse_y div tam) * tam
	
			obj_mouse.item.x = _x
			obj_mouse.item.y = _y;
		
	}
	// se soltei e não esta ocupado
	if mouse_check_button_released(mb_left)
		{
			seg = 0
			obj_mouse.item = noone;
			if (_ocupado)
			{
					x = last_x
					y = last_y
			
			} 
			else 
			{
				last_x = x
				last_y = y
			}
	}
}

//vermelho se esta ocupado
if (_ocupado)
{
	image_blend = c_red;
} 
else 
{
	image_blend = c_white;
}

