choose_state = false;
start_atack = false;
count = 0;
last_state = "idle"
alarm[4] = 420;
life = 1


state = "idle"
state_machine = function()
{
	switch(state)
	{
		case "idle":
		{
			
			sprite_index = spr_boss_idle
			
			count = 0;
			if (choose_state == false)
			{
				choose_state = true;
				alarm[0] = 180
			}
		}
		break
		case "ground":
		{
			sprite_index = spr_boss_ground;
				last_state = state
			if (start_atack == false)
			{
				start_atack = true;
				alarm[1] = 30;
			}
		}
		break
		case "stalker":
		{
			sprite_index = spr_boss_stalker;
			last_state = state
			if (start_atack == false)
			{
				start_atack = true;
				alarm[1] = 60;
			}
		}
		break
		case "instance":
		{
			sprite_index = spr_boss_instance;
				last_state = state
			if (start_atack == false)
			{
				start_atack = true;
				alarm[1] = 60;
			}
		}
		break
		case "rain":
		{
			sprite_index = spr_boss_rain;
				last_state = state
			if (start_atack == false)
			{
				start_atack = true;
				alarm[1] = 60;
			}
		}
		break
		case "fall":
		{
			sprite_index = spr_boss_fall;
				last_state = state
			if (start_atack == false)
			{
				start_atack = true;
				alarm[1] = 60;
			}
		}
		break
		case "die":
			sprite_index = spr_boss_die
		break
	}
}