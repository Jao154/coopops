if position_meeting(mouse_x,mouse_y,id)
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
if seg = 1
{
	
	x = mouse_x
	y = mouse_y
}
else
{
	
move_towards_point(obj_helper.x,obj_helper.y,0.2);	
}
	
	