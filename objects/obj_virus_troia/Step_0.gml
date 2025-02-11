if position_meeting(mouse_x,mouse_y,id) && obj_mouse.state != "antivirus"
{
	if mouse_check_button_pressed(mb_left)
	{
		
		seg = 1;
		
	}
}
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
else
{
	//seguindo o helper se ele n estiver escondido
	if (obj_helper.state != "folder")
	{
		move_towards_point(obj_helper.x,obj_helper.y,velocity);	
	}
	
	//perseguindo o mouse se ele estiver escondido
	else
	{
		move_towards_point(mouse_x,mouse_y,velocity)
	}
	
}

//mostrando a quem deve dar dano
if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
{
	obj_mouse.enemy_id = id;
}


//voltando a escala original
image_xscale = lerp(image_xscale,1,0.3)
image_yscale = lerp(image_yscale,1,0.3)


//me destruindo
if life <= 0 instance_destroy(id);
	