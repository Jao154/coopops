/// @description Controla as ações do mouse
///Se o mouse está segurando alguma coisa
seg = 0;
drag = false; //controle para gastar apenas quando segura
item = noone;

global.mouse_life = global.mouse_life_max

enemy_id = noone;

//Sprite do mouse
cursor_sprite = spr_mouse_antivirus
window_set_cursor(cr_none)

//quantidade de usos
drag_uses = 10;

eraser_uses = 2;
folder_uses = 2;


life = 3;

//controlar o tempo do reinicio de fase
lose = false;

//temporizador de dano
life_timer = 90;
life = 3;

bug_timer_s = 5
bug_timer = bug_timer_s

#region state machine



state = "none"
state_machine = function()
{
	switch(state)
	{
		case "none":
		{
			if position_meeting(mouse_x,mouse_y,obj_bug)
			{
				cursor_sprite = spr_pmouse_dmg
				
			}
			else
			{
				cursor_sprite = spr_pmouse;	
			
			}
			enemy_id = noone;
			eraser_id = noone;
			
			if (life_timer <= 90)
			{
				life_timer++;
			}
			
			//se estou colidindo com o icone
			if position_meeting(mouse_x, mouse_y, obj_icon1)
			or position_meeting(mouse_x,mouse_y,obj_icon2)
			
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
			if position_meeting(mouse_x,mouse_y,obj_bug)
			{
				cursor_sprite = spr_pmouse_drag_dmg
			}
			else
			{
				cursor_sprite = spr_pmouse_drag;	
			}
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
			if position_meeting(mouse_x,mouse_y,obj_bug)
			{
				cursor_sprite = spr_mouse_lixeira_dmg
			}
			else
			{
				cursor_sprite = spr_mouse_lixeira;	
			}
			
			
			if (position_meeting(mouse_x,mouse_y,obj_icon1))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(obj_icon1)
					state = "none";
					
				}
			}
			if (position_meeting(mouse_x,mouse_y,obj_icon2))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(obj_icon2)
					state = "none";
					
				}
			}
			if (position_meeting(mouse_x,mouse_y,obj_move))
			{
				if (mouse_check_button_pressed(mb_left)  && (eraser_uses > 0))
				{
					instance_destroy(eraser_id)
					state = "none";
					
				}
			}
			
		}
		break
		case "paint":
		{
			if position_meeting(mouse_x,mouse_y,obj_bug)
			{
				cursor_sprite = spr_mouse_paint_dmg
			}
			else
			{
				cursor_sprite = spr_mouse_paint;	
			}
			
			//se estiver no estado paint e clicar
			if mouse_check_button_pressed(mb_left)
			{
				
				//se o mouse estiver acima da area de trabalho
			
				{
					
					//se eu ainda tiver usos
					if (global.paint_uses > 0)
					{
						var _grid = 16
						//Alinha na grid
						var _x = mouse_x div _grid * _grid
						var _y = mouse_y div _grid * _grid
						//cria cor e gasta uso
						instance_create_layer(_x,_y,"icons",obj_color)
						global.paint_uses--;
					}
				}
			}
		}
		break
		case "antivirus":
		{
			if position_meeting(mouse_x,mouse_y,obj_bug)
			{
				cursor_sprite = spr_pmouse_dmg
			}
			else
			{
				cursor_sprite = spr_mouse_antivirus;	
			}
			
			
		}
		break
		case "mouse_dmg":
		{
			cursor_sprite = spr_pmouse_dmg;
			life_timer--;
		}
		
	}
}

#endregion
