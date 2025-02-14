
//arredonda o tempo
showtime = ceil(mytime)	


//------------Se o arraste chegar a zero---------
if ((obj_mouse.drag_uses <= 0) and lose == false)//lose para controlar
{
	lose = true;
}
else
{
	lose = false;
}

//-----------Se o o mouse ou helper perderem as vidas----------
if (global.mouse_life <= 0 or global.helper_life <= 0)
{	
	obj_helper.state = "die"
}

//----------Se cai no buraco---------
if (obj_helper.y > room_height + 16)
{
	obj_helper.state = "die"
}

//Mouse em cima do bug
if position_meeting(mouse_x,mouse_y,obj_bug) or obj_mouse.drag_uses <= 0
{
	
	lose = true	
}

//------------TEMPORIZADOR-----------------
//Se perdi por falta de arraste

if (lose)
{
	//Se ainda tenho tempo
	if (mytime > 0)
		{
			//Meu tempo diminui um segundo
			mytime = mytime - delta_time/1000000
		}
		else 
		{
			//Se não tenho tempo
			showtime = 0
		}
}
else
{
	
	//Se não perdi, Tenho tempo
	
	mytime = 5
}

//Se meu tempo chegar a 0, eu perdi
if (showtime <= 0)
	{
		obj_helper.state = "die"
	}
	
//--------------------------------------