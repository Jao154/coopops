/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se estiver não estiver segurando, posso segurar

state_machine();

// se o mouse estiver no bug a fase reseta
if position_meeting(mouse_x,mouse_y,obj_bug)
{
			screen_shake(20, life_timer)
			bug_timer = bug_timer_s - delta_time/1000000
			
} else
{
	lose = false
	screen_shake(0,0)

	//if (life_timer <= 90)
	//	{
	//		life_timer++;
	//	}
}

#region mouse tomando dano
// se ele esta colidindo com a mensagem de erro

//se o timer
if (life_timer <= 0)
{
	screen_shake(30,20)
	global.mouse_life--;
	life_timer = 90;
}

if (bug_timer <= 0)
{
	screen_shake(30,20)
	bug_timer = bug_timer_s
}

if (life <= 0)
{
	room_restart();
}
#endregion 