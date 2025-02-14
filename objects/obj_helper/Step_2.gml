/// @description Colisão

//Colisão horizontal
if place_meeting(x + hspd, y, obj_solid)
{
		while(!place_meeting(x + sign(hspd), y, obj_solid))
		{
			x = x + sign(hspd)
		}
	hspd = 0
}

//Se eu estou dentro de uma parede
if place_meeting(x,y,obj_solid)
{
	if place_meeting(x + hspd, y, obj_solid)
	{
		y-= obj_solid.y / (sprite_get_height(sprite_index) * 2)
	} 
	hspd = 0
}

//Colisão horizontal com os icones que o mouse pode pegar
if (instance_exists(obj_icon1) and obj_icon1.seg = 0) 
{
		if place_meeting(x + hspd, y, obj_icon1)
		{
				while(!place_meeting(x + sign(hspd), y, obj_icon1))
				{
					x = x + sign(hspd)
				}
			hspd = 0
		}
}
if (instance_exists(obj_icon2) and obj_icon2.seg = 0 )
{
		if place_meeting(x + hspd, y, obj_icon2)
		{
				while(!place_meeting(x + sign(hspd), y, obj_icon2))
				{
					x = x + sign(hspd)
				}
			hspd = 0
		}
}
if instance_exists(obj_move)
{
	if obj_move.seg = 0 
	{
			if place_meeting(x + hspd, y, obj_move)
			{
					while(!place_meeting(x + sign(hspd), y, obj_move))
					{
						x = x + sign(hspd)
					}
				hspd = 0
			}
	}
}

//Movendo o X
x += hspd

//Colisão vertical
if place_meeting(x, y + vspd, obj_solid)
{
	while(!place_meeting(x, y + sign(vspd), obj_solid))
	{
		y = y + sign(vspd)
	}
	vspd = 0
}

//Colisão vertical com os icones que o mouse pode pegar
if (instance_exists(obj_icon1) and obj_icon1.seg = 0  )
{
		if place_meeting(x, y + vspd, obj_icon1)
		{
				while(!place_meeting(x, y + sign(vspd), obj_icon1))
				{
					y = y + sign(vspd)
				}
			vspd = 0
		}
}
if (instance_exists(obj_icon2) and obj_icon2.seg = 0 ) 
{
		if place_meeting(x, y + vspd, obj_icon2)
		{
				while(!place_meeting(x, y + sign(vspd), obj_icon2))
				{
					y = y + sign(vspd)
				}
			vspd = 0
		}
}
if instance_exists(obj_move)
{
	if obj_move.seg = 0 {
			if place_meeting(x, y + vspd, obj_move)
			{
					while(!place_meeting(x, y + sign(vspd), obj_move))
					{
						y = y + sign(vspd)
					}
				vspd = 0
			}
	}
}


//Movendo o Y
y += vspd