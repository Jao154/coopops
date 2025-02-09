/// @description Controla as ações do mouse
///Se o mouse está segurando alguma coisa
seg = 0;
drag = false; //controle para gastar apenas quando segura



//Sprite do mouse
cursor_sprite = spr_pmouse
window_set_cursor(cr_none)

//quantidade de usos
drag_uses = 10;
eraser_uses = 3
paint_uses = 3;

//controlar o tempo do reinicio de fase
lose = false;

//temporizador de dano
life_timer = 90;
life = 3;

#region state machine

state = "none"
state_machine = function()
{
	switch(state)
	{
		case "none":
		{
			cursor_sprite = spr_pmouse;
		}
		break
		case "eraser":
		{
			cursor_sprite = spr_pmouse;
			
		}
		break
		case "paint":
		{
			cursor_sprite = spr_mouse_paint
			
			//se estiver no estado paint e clicar
			if mouse_check_button_pressed(mb_left)
			{
				
				//se o mouse estiver acima da area de trabalho
			
				{
					
					//se eu ainda tiver usos
					if (paint_uses > 0)
					{
						//cria cor e gasta uso
						instance_create_layer(mouse_x,mouse_y,"icons",obj_color)
						paint_uses--;
					}
				}
			}
		}
		break
		
	}
}

#endregion
