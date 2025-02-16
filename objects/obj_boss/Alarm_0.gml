if (state == "idle")
{
	randomize();
	
	if (life > 50)
	{
		var new_state = choose("ground","instance","stalker")
		if (new_state == last_state) 
		{
			alarm[0] = 1;
		}
		else
		{
			state = new_state;
		}
	}
	else
	{
		var new_state = choose("rain","fall")
		
		if (new_state == last_state)
		{
			alarm[0] = 1;
		}
		else
		{
			state = new_state;
		}
	}
	
}
