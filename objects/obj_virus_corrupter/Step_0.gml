//seguindo o helper
var _dir = point_direction(x,y,obj_helper.x,obj_helper.y) + 180
shot_timer--;
direction = _dir;
image_angle = direction;

state_machine()



//mostrando a quem deve dar dano
if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
{
	obj_mouse.enemy_id = id;
}

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
	state = "moving"
}

//Se estou sendo segurado
if (seg = 1)
{
	//seguindo o mouse
	x = mouse_x
	y = mouse_y
}

//mostrando a quem deve dar dano
if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
{
	obj_mouse.enemy_id = id;
}
