if (state == "ground")
{
	instance_create_layer(208,144,"virus",obj_ground_flame)
}
if (state == "instance")
{
	if (count <= 6)
	{
		instance_create_layer(obj_helper.x,obj_helper.y-7,"virus",obj_instance)
		alarm[1] = 60;
		count++;
	}
	if (count > 6)
	{
		state = "idle"
		choose_state = false;
		start_atack = false;

	}
}
if (state == "stalker")
{
	
		instance_create_layer(x+10,y,"virus",obj_stalker)
		instance_create_layer(x-10,y,"virus",obj_stalker)
		instance_create_layer(x,y-10,"virus",obj_stalker)
		alarm[2] = 300;
	
}

if (state == "rain")
{
	if (count < 30)
	{
		instance_create_layer(irandom_range(174,432),44,"virus",obj_rain)
		count++;
		alarm[1] = 10;
	}
	else
	{
		state = "idle";
		choose_state = false;
		start_atack = false;
	}
}
if (state == "fall")
{
	if (count < 4)
	{
		instance_create_layer(obj_helper.x,48,"colisores",obj_fall)
		count++;
		alarm[1] = 40
	}
	else
	{
		state = "idle";
		choose_state = false;
		start_atack = false;
		
	}
	
}