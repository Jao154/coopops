// se o mouse estiver em cima e estiver em pait
if position_meeting(mouse_x, mouse_y, id) 
{
	if mouse_check_button(mb_left)
	{	
		
		if (obj_mouse.state == "eraser" and obj_mouse.eraser_uses > 0)
		{
			//destruao e gasto usos
			instance_destroy(id)
			obj_mouse.eraser_uses--;
			obj_mouse.state = "none"
		}
	
	}
}