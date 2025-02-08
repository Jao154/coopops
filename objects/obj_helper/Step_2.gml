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

//Movendo o Y
y += vspd