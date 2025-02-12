/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se estiver não estiver segurando, posso segurar

state_machine();

// se o mouse estiver no bug a fase reseta
if position_meeting(mouse_x,mouse_y,obj_bug_64)
{
	if (lose == false)
	{
		lose = true
		alarm[0] = 60;
	}
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

if (life <= 0)
{
	room_restart();
}
#endregion 