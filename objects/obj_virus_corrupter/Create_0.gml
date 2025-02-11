seg = 0; //se estou sendo segurado
shot_timer = 0
shot_wait = 120;


last_x = x
last_y = y

//status
life = 10;
velocity = 0.2;



//identidade
_id = id

state = "moving"
state_machine = function()
{
	switch(state)
		{
			case "moving":
			{
					//se eu estou longe, eu me aproximo				
					if (obj_helper.state != "folder")
					{
						if distance_to_object(obj_helper) <= 70 state = "shooting"
						move_towards_point(obj_helper.x,obj_helper.y,0.5)
					}
					
				
			}
			break
			case "shooting":
			{
				speed = 0;
				
				//atirando
				if (shot_timer <= 0)
				{
					var _dir = point_direction(x,y,obj_helper.x,obj_helper.y)
					if (obj_helper.state != "folder")
					{
						var _shot = instance_create_layer(x,y,"Instances",obj_virus_shot)
						_shot.speed = 1;
						_shot.direction = _dir ; 
						shot_timer = shot_wait;
					}
				}
				
				//se estou longe eu me aproximo
				if distance_to_object(obj_helper) >= 70 state = "moving"
			}
			break
		}
}