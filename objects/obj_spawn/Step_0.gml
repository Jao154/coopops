if (spawn == true and begin_spawn == false)
{
	begin_spawn = true;
	instance_create_layer(_x,_y,"virus",virus)
}

if (awaker)
{
	if (obj_helper.x >=  _xawake and obj_helper.y >=  _yawake and begin_spawn = false)
	{

		begin_spawn = true;
		instance_create_layer(_x,_y,"virus",virus)
	}
}

if (room == rm_antivirus)
{
	if place_empty(x,y,obj_key)
	{
		if (begin_spawn = false)
		{
			begin_spawn = true;
			instance_create_layer(_x,_y,"virus",virus)
		}
	}
}
if (room == rm_cleaner)
{
	if (obj_helper.y < 448 and begin_spawn == false)
	{
		begin_spawn = true;
		alarm[1] = 1;
	}
}