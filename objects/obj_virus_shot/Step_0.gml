//se estiver colidido
if position_meeting(mouse_x,mouse_y,id) && obj_mouse.state != "antivirus"
{
	
	//sendo segurando
	if mouse_check_button_pressed(mb_left)
	{
		
		seg = 1;
		
	}
}

//sendo solto
if mouse_check_button_released(mb_left)
{
	seg = 0
}

//Se estou sendo segurado
if (seg = 1)
{
	//seguindo o mouse
	x = mouse_x
	y = mouse_y
}
