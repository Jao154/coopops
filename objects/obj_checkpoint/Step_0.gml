//se eu chego no ultimo frame eu paro
if (image_index = 5)
{
	image_speed = 0;
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
	
