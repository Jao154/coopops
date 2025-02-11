seg = 0; //se estou sendo segurado

//status
life = 10;
velocity = 0.2;

//identidade
_id = id


state = "following"
state_machine = function()
{
	switch(state)
	{
		
		case "following":
		{
			follow();
		}
		break
		case "die":
		{
			sprite_index = spr_stalker_die
		}
		break
	}
}

