/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se estiver não estiver segurando, posso segurar

state_machine();

///
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
	obj_helper.state = "die"
}
#endregion 