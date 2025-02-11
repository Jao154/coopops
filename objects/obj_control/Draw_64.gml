/// @description Desenhando os elementos visuais


//tava bugando
//draw_text(20,60, "SEGURANDO :" + string(global.drag))

//Pegando o mouse na tela
var _mouse_x = device_mouse_x_to_gui(0)
var _mouse_y = device_mouse_y_to_gui(0)

//Desenhando a barra na gui
var _gui_w = display_get_gui_width()
var _gui_h = display_get_gui_height()

draw_sprite_stretched(spr_hotbar, 0, 0, _gui_h - 80, _gui_w, 80)

///Desenhando icones
var _sprite = spr_icons //Sprite dos icones
var _sprite_w = sprite_get_width(_sprite)
var _scale = 5 //Escala dos sprites

//Escala do texto
_txt_scale = 3

//Menu Iniciar
#region
draw_sprite_ext(_sprite, 0, 50, _gui_h - 45, 5, 5, 0, c_white, 1)
var _menu_area = point_in_rectangle(_mouse_x, _mouse_x, 25, _gui_h - 260, 300, 1000)
var _start = point_in_rectangle(_mouse_x, _mouse_y, 19, _gui_h - 70, 80, _gui_h)
var _exit = point_in_rectangle(_mouse_x, _mouse_y, 35, _gui_h - 140, 270, _gui_h - 80)
var _restart = point_in_rectangle(_mouse_x, _mouse_y, 35, _gui_h - 220, 270, _gui_h - 160)

draw_set_font(global.font1)

if (_start) 
{
	if mouse_check_button_pressed(mb_left)
	{
		
		if menu = false 
		{
			audio_play_sound(sfx_menu_in,100,0)
			menu = true
		} 
		else 
		{
			audio_play_sound(sfx_menu_out,100,0)
			menu = false
		}
	}
}

if (menu)
{
	draw_sprite_stretched(spr_menu, 0, 25, _gui_h - 260, 280, 190) //Fundo do menu
	draw_sprite_ext(spr_menu_icons, 0, 65, _gui_h - 110, 5, 5, 0, c_white, 1) //Sair do jogo
	draw_text_transformed(105, _gui_h - 110, "Desligar", _txt_scale, _txt_scale, 0)
	draw_sprite_ext(spr_menu_icons, 1, 65, _gui_h - 190, 5, 5, 0, c_white, 1) //Reiniciar a fase
	draw_text_transformed(105, _gui_h - 190, "Reiniciar", _txt_scale, _txt_scale, 0)
	
	//draw_rectangle(35, _gui_h - 140, 270, _gui_h - 80, false)
	//draw_rectangle(35, _gui_h - 220, 270, _gui_h - 160, false
	//Área que posso clicar nos botões

	
	if _exit 
	{
		if mouse_check_button_pressed(mb_left) 
		{
			audio_play_sound(sfx_menu_select,100,0)
			
			if file_exists("checkpoint.ini")
			{
				file_delete("checkpoint.ini")
			}
			if file_exists("programas.ini")
			{
				file_delete("programas.ini")
			}
			game_end()
		}
	}
	if _restart 
	{
		if mouse_check_button_pressed(mb_left) 
		{
			audio_play_sound(sfx_menu_select,100,0)
			alarm[1] = 15;
			
		}
	}
}



#endregion

//Icones


//Drag
var _2_color = c_white //Cor do drag, para indicar que está sendo usada
//Colisão com drag
var _drag = point_in_rectangle(_mouse_x, _mouse_y, 120, _gui_h - 70, 180, _gui_h)

//Se eu clico no drag
if _drag
{
	
//alterna entre estados
	if mouse_check_button_pressed(mb_left)
	{
		if (obj_mouse.state != "none")
		{
			obj_mouse.state = "none" 
		}
		else
		{
			obj_mouse.state = "none" 
		}
	}
	
}

//Reseta a cor quando eu paro de usar o drag
if (obj_mouse.drag_uses <= 0)
{		
	_2_color = c_red
}
else
{
	_2_color = c_white
}

	
//Desenha o sprite do drag
draw_sprite_ext(spr_pmouse_16, 1, 1200, _gui_h - 45, 5, 5, 0, _2_color, 1)
draw_text_transformed(1150, _gui_h - 50, string(obj_mouse.drag_uses), _txt_scale, _txt_scale, 0)




//Se eu já coletei o paint
if (global.paint)
{
		//Paint
		var _2_color = c_white //Cor do paint, para indicar que está sendo usada
		//Colisão com  paint
		var _paint = point_in_rectangle(_mouse_x, _mouse_y, 120, _gui_h - 70, 180, _gui_h)

		//Se eu clico no paint
		if _paint
		{
	
			//alterna entre estados
				if mouse_check_button_pressed(mb_left)
				{
					 if (obj_mouse.state != "paint")
					 {
						obj_mouse.state = "paint" 
					 }
					 else
					 {
						obj_mouse.state = "none" 
					 }
				}
	
		}

		//Reseta a cor quando eu paro de usar o paint
		if (obj_mouse.state = "paint")
		{		
			_2_color = c_red
		}
		else
		{
			_2_color = c_white
		}

	
		//Desenha o sprite do paint
		draw_sprite_ext(_sprite, 1, 150, _gui_h - 45, 5, 5, 0, _2_color, 1)
		draw_text_transformed(175, _gui_h - 25, string(obj_mouse.paint_uses), _txt_scale, _txt_scale, 0)
}

//Lixeira

//Se eu tiver coletado a lixeira
if (global.lixeira)
{
		var _l_color = c_white //Cor da lixeira, para indicar que está sendo usada
		//Colisão com  lixeira
		var _lixeira = point_in_rectangle(_mouse_x, _mouse_y, 220, _gui_h - 70, 280, _gui_h)

		//Se eu clico na lixeira
		if _lixeira
		{
			//alterna entre os estados
			if mouse_check_button_pressed(mb_left)
				{
					 if (obj_mouse.state != "eraser")
					 {
						obj_mouse.state = "eraser" 
					 }
					 else
					 {
						obj_mouse.state = "none" 
					 }
				}
	
		}

		//Reseta a cor quando eu paro de usar a lixeira
		if (obj_mouse.state = "eraser")
			{
				_l_color = c_red
			}
		else
			{
				_l_color = c_white	
			}

		//Desenha o sprite da lixeira
		draw_sprite_ext(_sprite, 2, 250, _gui_h - 45, 5, 5, 0, _l_color, 1)
		draw_text_transformed(275, _gui_h - 25, string(obj_mouse.eraser_uses), _txt_scale, _txt_scale, 0)
}


//Se eu já coletei a pasta
if (global.folder)
{
		//Pasta
		var _2_color = c_white //Cor da pasta, para indicar que está sendo usada
		//Colisão com  pasta
		var _folder = point_in_rectangle(_mouse_x, _mouse_y, 320, _gui_h - 70, 380, _gui_h)

		//Se eu clico na pasta
		if (_folder)
		{
	
			//alterna entre estados, controla gasto de usos
				if mouse_check_button_pressed(mb_left)
				{
					
					if (obj_mouse.folder_uses > 0)
					{
						if (obj_helper.state != "folder")
						{
							obj_mouse.folder_uses--;
							obj_helper.state = "folder" 
						}
						else
						{
							obj_helper.state = "idle" 
						}
					}
					else
					{
						if (obj_helper.state = "folder")
						{
							obj_helper.state = "idle";						
						}
					}
					
				}
	
		}

		//Reseta a cor quando eu paro de usar a pasta
		if (obj_helper.state = "folder")
		{		
			_2_color = c_red
		}
		else
		{
			_2_color = c_white
		}

	
		//Desenha o sprite da pasta
		draw_sprite_ext(_sprite, 3, 350, _gui_h - 45, 5, 5, 0, _2_color, 1)
		draw_text_transformed(375, _gui_h - 25, string(obj_mouse.folder_uses), _txt_scale, _txt_scale, 0)
}


//Se eu já coletei o antivirus
if (global.antivirus)
{
		//antivirus
		var _2_color = c_white //Cor do antivirus, para indicar que está sendo usada
		//Colisão com o antivirus
		var _antivirus = point_in_rectangle(_mouse_x, _mouse_y, 420, _gui_h - 70, 480, _gui_h)

		//Se eu clico no antivirus
		if _antivirus
		{
	
			//alterna entre estados
				if mouse_check_button_pressed(mb_left)
				{
					 if (obj_mouse.state != "antivirus")
					 {
						obj_mouse.state = "antivirus" 
					 }
					 else
					 {
						obj_mouse.state = "none" 
					 }
				}
	
		}

		//Reseta a cor quando eu paro de usar o antivirus
		if (obj_mouse.state = "antivirus")
		{		
			_2_color = c_red
		}
		else
		{
			_2_color = c_white
		}

	
		//Desenha o sprite do antivirus
		draw_sprite_ext(_sprite, 4, 450, _gui_h - 45, 5, 5, 0, _2_color, 1)
		//draw_text_transformed(475, _gui_h - 25, string(obj_mouse.antivirus_uses), _txt_scale, _txt_scale, 0)
}



//Se eu já coletei o cleaner
if (global.cleaner)
{
		//cleaner
		var _2_color = c_white //Cor da pasta, para indicar que está sendo usada
		//Colisão com o cleaner
		var _cleaner = point_in_rectangle(_mouse_x, _mouse_y, 520, _gui_h - 70, 580, _gui_h)

		//Se eu clico no cleaner
		if _cleaner
		{
	
			//se clicar e o temporizador estiver zerado
				if mouse_check_button_pressed(mb_left)
				{
					if (obj_helper.cleaner_timer <= 0)
					{
						global.cleaner_buff = true;// ativando o buff
						alarm[0] = 180; //duração do buff
					}
				}
	
		}

		//Reseta a cor quando pode usar o cleaner
		if (obj_helper.cleaner_timer >= 0)
		{		
			_2_color = c_red
		}
		else
		{
			_2_color = c_white
		}

	
		//Desenha o sprite do antivirus
		draw_sprite_ext(_sprite, 5, 550, _gui_h - 45, 5, 5, 0, _2_color, 1)
		//draw_text_transformed(575, _gui_h - 25, string(obj_mouse.cleaner_uses), _txt_scale, _txt_scale, 0)
}



draw_set_font(-1)