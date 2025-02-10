// Inherit the parent event
event_inherited();

if (obj_mouse.state == "eraser")
{
	if position_meeting(mouse_x,mouse_y,id)
	{
		obj_mouse.eraser_id = id
	}
}