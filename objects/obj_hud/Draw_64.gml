/// @description Desenhando o hud
//Fonte
draw_set_font(global.font1)

///Vidas do Helper ---
var _sprite_h = sprite_get_height(spr_heart) //Altura do sprite da vida
//Vida Cheia
for (var i = 0; i < global.helper_life_max; i++)
{
	draw_sprite_ext(spr_no_heart, 0, 20, 100 + (50 * i) - _sprite_h, 3, 3, 0, c_white, 1)	
}

//Vida Atual
for (var i = 0; i < global.helper_life; i++)
{
	draw_sprite_ext(spr_heart, 0, 20, 100 + (50 * i) - _sprite_h, 3, 3, 0, c_white, 1)	
}

///Vida do Mouse ---

//Vida Cheia
for (var i = 0; i < global.mouse_life_max; i++)
{
	draw_sprite_ext(spr_no_heart, 0, gui_w - 60, 35 + (50 * i) - _sprite_h, 3, 3, 0, c_white, 1)	
}

//Vida Atual
for (var i = 0; i < global.mouse_life; i++)
{
	draw_sprite_ext(spr_heart, 0, gui_w - 60, 35 + (50 * i) - _sprite_h, 3, 3, 0, c_white, 1)	
}

///Usos do mouse ---
if instance_exists(obj_mouse) {
		draw_sprite_ext(spr_pmouse_16, 0, gui_w - 40, 300, 4, 4, 0, c_white, 1)	
		draw_text_transformed(gui_w - 95, 290, string(obj_mouse.drag_uses), 4, 4, 0)
}

//Nome do level
draw_set_halign(1)
draw_text_transformed(gui_w - 70, gui_h - 65, string(global.course_name), 3, 3, 0)

//Horas
var _horas	= current_hour
var _min		= current_minute

draw_text_transformed(gui_w - 70, gui_h - 35, string(_horas) + ":" + string(_min), 3, 3, 0)
draw_set_halign(-1)

///Sons
//Icones do slider
var _sprite_w = sprite_get_width(spr_sound)
var _spr_h = sprite_get_height(spr_sound)

//Posição do mouse
var _mouse_x = device_mouse_x_to_gui(0)
var _mouse_y = device_mouse_y_to_gui(0)

draw_sprite_ext(spr_sound, 0, gui_w - 140,  gui_h - 40, 4, 4, 0, c_white, 1)
//draw_rectangle((gui_w - 140) - _sprite_w - 8,  (gui_h - 40) - _spr_h - 8, (gui_w - 140) + _sprite_w + 8,(gui_h - 40) + _spr_h + 8, false)
var _icon = point_in_rectangle(_mouse_x, _mouse_y, (gui_w - 140) - _sprite_w - 8,  (gui_h - 40) - _spr_h - 8, (gui_w - 140) + _sprite_w + 8,(gui_h - 40) + _spr_h + 8)

//Clicando no icone do som
if (_icon)
{
	if mouse_check_button_pressed(mb_left)
	{
		sound = !sound
	}
}

if sound = 1
{
	
	draw_sprite_ext(spr_volume_menu, 0, gui_w - 190, gui_h - 80 - _spr_h, 1, 1, 0, c_white, 1)	
	
	//Definindo a posição do slider
	var _menu_w = sprite_get_width(spr_volume_menu) - 47
	var _xx = (gui_w - 165)
	var _slider = _xx + (_menu_w * volume)
	draw_sprite_ext(spr_volume_slider, 0, _slider, gui_h -  80 - _spr_h, 4, 4, 0, c_white, 1)	
	show_debug_message(_menu_w)

	//Alterando o valor
	var _slider_x =  _xx + (_menu_w * volume)
	var _slider_y = gui_h -  80 - _spr_h
	
	var _mouse_on = point_in_circle(_mouse_x, _mouse_y, _slider_x, _slider_y, 40)
	
	if _mouse_on
	{
		if mouse_check_button(mb_left)
		{
			volume = ((_mouse_x - _xx) / _menu_w)	
			volume = clamp(volume, 0, 1)
		}
	} else if !_mouse_on && !_icon
	{
		if mouse_check_button(mb_left)
		{
			sound = 0	
		}
	}
	
}

show_debug_message(volume)
