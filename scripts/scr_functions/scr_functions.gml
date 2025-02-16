function screen_shake(_len, _time)
{
	with(obj_camera)
	{
		shake_length	= _len
		shake_time = _time
		alarm[0] = shake_time
	}
}

function player_take_damage() //Dano no player
{
	with (obj_helper)
		{
			if (timer <= 0 and obj_helper.state != "folder")
		{
			screen_shake(30,20)
			audio_play_sound(sfx_hurt, 0, 0)
			global.helper_life--;
			timer = dmg_timer
		}
	}
}

function die() //Morrendo
{
	if (life <= 0)
	{
		state = "die"
	}
}

function spring_return(_x,_y) //Escalas voltando ao normal
{
image_xscale = lerp(image_xscale,1,_x);
image_yscale = lerp(image_yscale,1,_y);
}

#region Arraste
function drag(_state) //Posso ser segurado; var: seg
{
	//Se estou colidindo com o mouse e não estou em modo de antivirus
	if position_meeting(mouse_x,mouse_y,id) && obj_mouse.state != "antivirus"
	{
		
		//Estou sendo segurado
		if mouse_check_button_pressed(mb_left)
		{
			seg = 1;
		}
	}
	
	//Se soltou o botão
	if mouse_check_button_released(mb_left)
	{
		//Não estou sendo segurado
		seg = 0
		
		//Volto ao meu estado padrão
		state = _state
	}

	//Se estou sendo segurado
	if (seg = 1)
	{
		//seguindo o mouse
		x = mouse_x
		y = mouse_y
	}
}

function no_drag() //Causando dano ao mouse se não pode ser arrastado
{
	if position_meeting(mouse_x,mouse_y,id)
	{
		if obj_mouse.state != "antivirus"
		{
			obj_mouse.state = "mouse_dmg"
		}
	}
}

#endregion
function antivirus_id() //Passa o id do virus para o antivirus
{
	//Se estou colidindo com o mouse e ele é o antivirus
	if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
	{
		
		//Passo o id para ele
		obj_mouse.enemy_id = id;
	}

}

function follow() //Segue o player se ele não esta escondido, se estiver, segue o mouse.
{
	if (obj_helper.state != "folder")
			{
				move_towards_point(obj_helper.x,obj_helper.y,velocity)
			}
			else
			{
				move_towards_point(mouse_x,mouse_y,velocity)
			}
}

