velocity = 0.5;
begin_move = false;
state = "waiting"
state_machine = function()
{
	switch(state)
	{
		case "waiting":
		{
			hspeed = 0;
			if mouse_check_button_pressed(mb_left)
			{
				
				state = "moving"
			}
		}
		break
		case "moving":
		{
			
			
			hspeed = velocity;
	        begin_move = false;		
		}
		
	}
}