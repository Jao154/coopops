/// @description Controla as ações do mouse
///Se o mouse está segurando alguma coisa
seg = 0;
drag = false; //controle para gastar apenas quando segura
item = noone;

enemy_id = noone;

//Sprite do mouse
cursor_sprite = spr_mouse_antivirus
window_set_cursor(cr_none)

//quantidade de usos
drag_uses = 10;
paint_uses = 1;
eraser_uses = 2;
folder_uses = 2;


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
			cursor_sprite = spr_pmouse
			
			enemy_id = noone;
			eraser_id = noone;
			
			if (life_timer <= 90)
			{
				life_timer++;
			}
			
			//se estou colidindo com o icone
			if position_meeting(mouse_x, mouse_y, obj_icon1)
			or position_meeting(mouse_x,mouse_y,obj_icon2)
			or (obj_helper.state == "folder" 
			and position_meeting(mouse_x,mouse_y,obj_helper))
				{
					//alternado para arraste
					if (mouse_check_button_pressed(mb_left))
					{
						state = "drag"
						seg = 1
						item = noone;
					}
				}	
			if (position_meeting(mouse_x,mouse_y,obj_virus_stalker))
			{
				{
					if (mouse_check_button_pressed(mb_left))
					{
						state = "drag_virus";
						seg_virus = 1;
						
					}
				}
			}
					
		}
		break
		case "drag":
		{
			cursor_sprite = spr_pmouse_drag;
			
			//se soltei o botão do mouse
			if (mouse_check_button_released(mb_left))
			{
				
				//alterno para o estado nada
				state = "none";
				seg = 0
				drag = false
			}
		}
		break
		case "drag_virus":
		{
			cursor_sprite = spr_pmouse_drag_dmg;
			life_timer--;
			
			//se soltei o botão do mouse
			if (mouse_check_button_released(mb_left))
			{
				
				//alterno para o estado nada
				state = "none";
				seg = 0
				drag = false;
			}
		}
		break
		case "eraser":
		{
			cursor_sprite = spr_mouse_lixeira;
			
			
			if (position_meeting(mouse_x,mouse_y,obj_icon1))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(obj_icon1)
					state = "none";
					eraser_uses--;
				}
			}
			if (position_meeting(mouse_x,mouse_y,obj_icon2))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(obj_icon2)
					state = "none";
					eraser_uses--;
				}
			}
			if (position_meeting(mouse_x,mouse_y,obj_move))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(eraser_id)
					state = "none";
					eraser_uses--;
				}
			}
			
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
						var _grid = 16
						//Alinha na grid
						var _x = mouse_x div _grid * _grid
						var _y = mouse_y div _grid * _grid
						//cria cor e gasta uso
						instance_create_layer(_x,_y,"icons",obj_color)
						paint_uses--;
					}
				}
			}
		}
		break
		case "antivirus":
		{
			cursor_sprite = spr_mouse_antivirus
			
			//colisão
			if position_meeting(mouse_x,mouse_y,obj_virus_stalker)
			{
				
				if mouse_check_button_pressed(mb_left)
				{
					enemy_id.life--; //reduz a vida
					enemy_id.velocity = 0; // faz ele parar
					enemy_id.alarm[0] = 10; // tempo para ele voltar a andar
					
					//efeito mola
					enemy_id.image_xscale = lerp(image_xscale,2,0.5)
					enemy_id.image_yscale = lerp(image_yscale,0.2,0.5)
					
				}
			}
		}
		break
		
	}
}

#endregion
