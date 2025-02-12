// Inherit the parent event
event_inherited();
state_machine();

if (obj_mouse.state == "eraser")
{
	if position_meeting(mouse_x,mouse_y,id)
	{
		obj_mouse.eraser_id = id
	}
}
//se o helper ta no lado esquerdo
if (collision_rectangle(x+16,y+6,x+ 32,y + 10,obj_helper,false,false))
	{
		state = "right";
	}
	
// se tano lado direito
if (collision_rectangle(x,y+6,x-16,y + 10,obj_helper,false,false))
	{
		state = "left";
	}

