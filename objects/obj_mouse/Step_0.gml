/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//se estiver não estiver segurando, posso segurar

state_machine();

//Seguindo o mouse se eu estou em cima dele
if position_meeting(mouse_x, mouse_y, obj_programa_parent)
{
	if mouse_check_button(mb_left) 
	{
		seg = 1
		cursor_sprite = spr_pmouse_drag
	}
	else 
	{
		seg = 0
		drag = false;
		
		//Conserta o sprite da lixeira
		if state != "eraser" {
		cursor_sprite = spr_pmouse
		}
	}
}

// se o mouse estiver no bug a fase reseta
if position_meeting(mouse_x,mouse_y,obj_bug)
{
	if (lose == false)
	{
		lose = true
		alarm[0] = 60;
	}
}

#region mouse tomando dano
// se ele esta colidindo com a mensagem de erro
if position_meeting(mouse_x,mouse_y,obj_mensagem_erro)
{
	
	//trocar sprite
	cursor_sprite = spr_pmouse_dmg
	
	//tempotizador de dano
	life_timer--;
	
	//quando o temporidador chegar a zero
	if (life_timer <= 0)
	{
		
		//diminui a vida e reseta o tempo
		life--;
		life_timer = 90;
	}

}

	//se não estiver colidindo e o temporizador estiver baixo
	if (life_timer <= 90) life_timer++;
	

if (life <= 0)
{
	room_restart();
}
#endregion 