if (room == rm_boss)
{
	_y = 144
	if !instance_exists(obj_boss)
	{
		if (y < _y and boss_kill == false)
		y+= .5
		if y > _y boss_kill = true
	}
}
//se estou aumentando
if (grow)
{
	image_xscale = lerp(image_xscale,1.2,0.02)
	image_yscale = lerp(image_yscale,1.2,0.02)
	
	//se cheguei no maximo eu diminuo
	if (image_xscale >= 1.1 and image_yscale >= 1.1)
	{
		grow = false
	}
}
else
{
	image_xscale = lerp(image_xscale,0.8,0.02)
	image_yscale = lerp(image_yscale,0.8,0.02)
	
	//se cheguei no minimo eu aumento
	if (image_xscale <= 0.9 and image_yscale <= 0.9)
	{
		grow = true
	}
}

//se n fui coletado
if (_get == false)
		{
	//se estou subindo
	if (up)
	{
		y -= 0.08;
	
	}
	//se não estou subindo
	else
	{
		y += 0.08;
	}
}	
else

//coletado
{
		with(obj_helper)
		{
			hspd = 0
			vspd = 0
		}

		with(obj_virus_stalker)
		{
				velocity = 0
		}
		
		if instance_exists(obj_virus_shot)
		{
			instance_destroy(obj_virus_shot)	
		}
	//subindo
	if (y > _y - 20)
	{
		y -= 0.2
	}
	if (y <= _y - 20)
	{	
		
		//aumentando
		image_xscale = lerp(image_xscale,3,0.05)
		image_yscale = lerp(image_yscale,3,0.05)
		image_alpha = lerp(image_alpha,0,0.05)
		
		//ganhando
		if (image_alpha <= 0.2)
		{
			if (win = false)
			{
				win = true
				alarm[1] = 60
			}
		}
	}
}
