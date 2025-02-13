seg = 0; //se estou sendo segurado
origin_x = x
origin_y = y

mouse_in = false;
helper_in = false;


//status
life = 10;
velocity = 1;
_id = id //para o antivirus

path_begin = false;


state = "patrolling"
state_machine = function()
{
	switch(state)
	{
		case "patrolling": //Patrulhando
		{
		
			if (path_begin == false) //Se o path não começou
			{
		
				path_begin = true;// O path começa
				path_start(path,velocity,path_action_reverse,0)
			}
			break
		}
		case "chase":
		{
			path_end(); //parando o path
			path_begin = false; //O path ja começou
			
			//Perseguindo o alvo mais próximo
			if (helper_in)
			{
				if (mouse_in == false)
				{
					move_towards_point(obj_helper.x,obj_helper.y,velocity)
				}
				else
				{
					if (distance_to_object(obj_helper) < point_distance(x,y,mouse_x,mouse_y))
					{
						move_towards_point(obj_helper.x,obj_helper.y,velocity)
					}
				}
			}
			if (mouse_in)
			{
				if (helper_in == false)
				{
					move_towards_point(mouse_x,mouse_y,velocity)
				}
				else
				{
					if (distance_to_object(obj_helper) > point_distance(x,y,mouse_x,mouse_y))
					{
						move_towards_point(mouse_x,mouse_y,velocity)
					}
				}
			}
			
		}
		break
		case "returning": //Retornado ao posto(obj_guard)
		{
			move_towards_point(origin_x,origin_y,velocity );
		}
		break
		case "die":
		{
			sprite_index = spr_guard_die;
		}
		break
	}
}


