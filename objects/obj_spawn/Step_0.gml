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