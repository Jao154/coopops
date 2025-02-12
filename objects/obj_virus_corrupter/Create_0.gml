seg = 0; //se estou sendo segurado


//-----Shot-----
shot_timer = 0
shot_wait = 120;

//------Status------
life = 10;
velocity = 0.5;
_id = id

state = "moving"
state_machine = function()
{
	switch(state)
		{
			case "moving":
			{
				sprite_index = spr_virus_corrupter
					//se eu estou longe, eu me aproximo				
					if (obj_helper.state != "folder")
					{
						if distance_to_object(obj_helper) <= 70 state = "shooting"
						move_towards_point(obj_helper.x,obj_helper.y,velocity);
					}
					
				
			}
			break
			case "shooting":
			{
				speed = 0;
				sprite_index = spr_corruptor_attack
				image_speed = (shot_timer / 60)
				
				//Tempo de espera acabou
				if (shot_timer <= 0)
				{
					image_index = 0

					//Mirando
					var _dir = point_direction(x,y,obj_helper.x,obj_helper.y)
					if (obj_helper.state != "folder")
					{
						//Atirando
						var _shot = instance_create_layer(x,y,"virus",obj_virus_shot)
						_shot.speed = 1;
						_shot.direction = _dir ; 
						shot_timer = shot_wait;
					}
				}
				
				//se estou longe eu me aproximo
				if distance_to_object(obj_helper) >= 70 state = "moving"
			}
			break
			case "die":
			{
				sprite_index = spr_corruptor_die
			}
			break
		}
}