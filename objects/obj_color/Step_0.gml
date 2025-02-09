if (obj_mouse.eraser)
{
	if mouse_check_button_pressed(mb_left)
	{
		instance_destroy(id)
		obj_mouse.eraser = false;
		obj_mouse.eraser_uses--;
	}
}