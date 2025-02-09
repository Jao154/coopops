/// @description Controle
mask_index = spr_helper_idle

state_machine();
show_debug_message(state);
/*
var _left, _right, _up
		_left = keyboard_check(vk_left)			or keyboard_check(ord("A"))
		_right = keyboard_check(vk_right)		or keyboard_check(ord("D"))
		_up = keyboard_check_pressed(vk_space)
		
var _press = _right - _left != 0 //Se eu estou apertando algum botão
var _dir = (_right - _left) //Qual botão eu estou apertando
var _len = point_direction(0, 0, _dir, 0) //Direção que devo ir

//Se eu estou no chão
var _ground = place_meeting(x, y + 1, obj_solid)

//Aplicando na velocidade horizontal
hspd = lengthdir_x(max_hspd * _press, _len)

//Pulo
if (_ground)
{
	if (_up)
	{
	vspd -= max_vspd
	}
}

//Se eu não estou no chão
//Aplicando a gravidade
if !(_ground)
{
	vspd += grav
}
*/