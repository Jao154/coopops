seg = 0; //se estou sendo segurado
radius = 50; //alcance
//status
life = 10;
velocity = 0.5;

//id para o antivirusd
_id = id

state = "idle"
state_machine = function()
{
	switch(state)
	{
		case "idle":
		{
			sprite_index = spr_troia_idle
			if (collision_circle(x,y,radius,obj_helper,false,false)) or point_in_circle(mouse_x,mouse_y,x,y,radius)
			{
				id.state = "chase"
			}
			
		}
		break
		case "chase":
		{
			sprite_index = spr_troia_chase;
			follow();
		}
		break
		case "die":
		{
			sprite_index = spr_troia_die;
		}
		break
	}
}
