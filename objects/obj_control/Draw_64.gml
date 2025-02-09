/// @description DEBUG
draw_text(20,20, "CLICKS :" + string(global.clicks))
//draw_text(20,40, "MOUSE SEGURANDO :" + string(obj_mouse.seg))

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

//Menu Iniciar
#region
draw_sprite_ext(_sprite, 0, 50, _gui_h - 45, 5, 5, 0, c_white, 1)
var _menu_area = point_in_rectangle(_mouse_x, _mouse_x, 25, _gui_h - 260, 300, 1000)
var _start = point_in_rectangle(_mouse_x, _mouse_y, 19, _gui_h - 70, 80, _gui_h)
var _exit = point_in_rectangle(_mouse_x, _mouse_y, 35, _gui_h - 140, 270, _gui_h - 80)
var _restart = point_in_rectangle(_mouse_x, _mouse_y, 35, _gui_h - 220, 270, _gui_h - 160)

if (_start) 
{
	if mouse_check_button_pressed(mb_left)
	{
		if menu = false {
		menu = true
		} else menu = false
	}
}

if (menu)
{
	draw_sprite_stretched(spr_menu, 0, 25, _gui_h - 260, 280, 190) //Fundo do menu
	draw_sprite_ext(spr_menu_icons, 0, 65, _gui_h - 110, 5, 5, 0, c_white, 1) //Sair do jogo
	draw_text(105, _gui_h - 110, "Desligar")
	draw_sprite_ext(spr_menu_icons, 1, 65, _gui_h - 190, 5, 5, 0, c_white, 1) //Reiniciar a fase
	draw_text(105, _gui_h - 190, "Reiniciar")
	
	//draw_rectangle(35, _gui_h - 140, 270, _gui_h - 80, false)
	//draw_rectangle(35, _gui_h - 220, 270, _gui_h - 160, false
	//Área que posso clicar nos botões

	
	if _exit {
		if mouse_check_button_pressed(mb_left) game_end()	
	}
	if _restart {
		if mouse_check_button_pressed(mb_left) room_restart()	
	}
}



#endregion

//Icones
//Lixeira
var _l_color = c_white //Cor da lixeira, para indicar que está sendo usada
//Colisão com  lixeira
var _lixeira = point_in_rectangle(_mouse_x, _mouse_y, 119, _gui_h - 70, 180, _gui_h)

//Se eu clico na lixeira
if _lixeira
{
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
draw_sprite_ext(_sprite, 2, 150, _gui_h - 45, 5, 5, 0, _l_color, 1)
draw_set_color(c_black)
draw_text(175, _gui_h - 25, string(obj_mouse.eraser_uses))
draw_set_color(c_white)




//Paint
var _2_color = c_white //Cor do paint, para indicar que está sendo usada
//Colisão com  paint
var _paint = point_in_rectangle(_mouse_x, _mouse_y, 220, _gui_h - 70, 280, _gui_h)

//Se eu clico no paint
if _paint
{
	
	
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

//Reseta a cor quando eu paro de usar a lixeira
if (obj_mouse.state = "paint")
{		
	_2_color = c_red
}
else
{
	_2_color = c_white
}

	
//Desenha o sprite da lixeira
draw_sprite_ext(_sprite, 1, 250, _gui_h - 45, 5, 5, 0, _2_color, 1)
draw_set_color(c_black)
draw_text(275, _gui_h - 25, string(obj_mouse.paint_uses))
draw_set_color(c_white)