/// @description
//Checando se já tem um objeto embaixo desse
var _ocupado = place_meeting(x,y,obj_solid) or place_meeting(x,y,obj_helper)

//Seguindo o mouse se eu estou em cima dele
if (obj_mouse.state != "mouse_dmg")
	{
	if position_meeting(mouse_x, mouse_y, id) && !_ocupado{
		if mouse_check_button(mb_left)
		{
			if obj_mouse.item = noone
			{
				obj_mouse.item = id	
			}

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
			// se estiver no estado eraser, pode ser destruido
			if (obj_mouse.state == "eraser" and obj_mouse.eraser_uses > 0)
			{
				instance_destroy(id)
				obj_mouse.eraser_uses--;
				obj_mouse.state = "none"
			}
	
		}
	}
}
if (seg = 1) && obj_mouse.item != noone
{
		
		//Se movendo na grid
		obj_mouse.state = "drag" 
		var _x = (mouse_x div tam) * tam
		var _y = (mouse_y div tam) * tam
	
		obj_mouse.item.x = _x
		obj_mouse.item.y = _y
}

if mouse_check_button_released(mb_left)
	{
		seg = 0
		obj_mouse.state = "none"
		obj_mouse.item = noone;
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