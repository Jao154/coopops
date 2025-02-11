
//arredonda o tempo
showtime = ceil(mytime)	


//------------Se o arraste chegar a zero---------
if (obj_mouse.drag_uses <= 0 and lose == false)//lose para controlar
{
	lose = true;
}
else
{
	lose = false;
}

//-----------Se o o mouse ou helper perderem as vidas----------
if (obj_mouse.life <= 0 or obj_helper.life <= 0)
{
	room_restart();
}

//----------Se cai no buraco---------
if (obj_helper.y > room_height + 16)
{
	room_restart();
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
		room_restart();	
	}
	
//--------------------------------------