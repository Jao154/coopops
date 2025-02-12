// Inherit the parent event
event_inherited();
begin_fall = false;
state = "right"
state_machine = function()
{
	switch(state)
	{
		case "right":
		{
			
			if place_meeting(x,y,obj_erro_zone)
			{
				if !place_meeting(x,y+1,obj_solid) and !place_meeting(x-36,y,obj_helper)
				{
					y++;		
				}
			}
		}
		break
		case "left":
		if place_meeting(x,y,obj_erro_zone)
			{
				if !place_meeting(x,y+1,obj_solid) and !place_meeting(x+36,y,obj_helper)
				{
					y++;		
				}
			}
		
	}
}
