
begin_move = false;
state = "waiting"
state_machine = function()
{
	switch(state)
	{
		case "waiting":
		{
			hspeed = 0;
		if(position_meeting(mouse_x, mouse_y, id))
		{
				if mouse_check_button_pressed(mb_left)
				{
				
					state = "moving"
				}
			}
		}
		break
		case "moving":
		{
			
			
			hspeed = velocity;
	        begin_move = false;
			
			with (obj_helper)
			{
				if place_meeting(x, y + 1, obj_navegador) && !place_meeting(x+sign(hspd),y,obj_solid)
				{
					x += obj_navegador.velocity	
				}
			}
		}
		
	}
}