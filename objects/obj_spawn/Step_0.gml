if (spawn == true and begin_spawn == false)
{
	begin_spawn = true;
	instance_create_layer(_x,_y,"virus",virus)
}