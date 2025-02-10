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
if obj_programa_parent.seg = 0 {
		if place_meeting(x + hspd, y, obj_programa_parent)
		{
				while(!place_meeting(x + sign(hspd), y, obj_programa_parent))
				{
					x = x + sign(hspd)
				}
			hspd = 0
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

//Colisão horizontal com os icones que o mouse pode pegar
if obj_programa_parent.seg = 0 {
		if place_meeting(x, y + vspd, obj_programa_parent)
		{
				while(!place_meeting(x, y + sign(vspd), obj_programa_parent))
				{
					y = y + sign(vspd)
				}
			vspd = 0
		}
}

//Movendo o Y
y += vspd