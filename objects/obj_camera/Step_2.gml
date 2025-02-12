/// @description
camera_set_view_size(view_camera[0], global.view_widht, global.view_height)

if room != rm_menu
{
	global.resolucao_scale = 2	
}

//Segue o alvo da camera só se ele existir
if instance_exists(view_target)
{
		//Segue o jogador o colocando no meio da tela
		var _x1 = view_target.x - global.view_widht/2
		var _y1 = view_target.y - global.view_height/2
		
		_x1 += random_range(-shake_length, shake_length)
		_y1 += random_range(-shake_length, shake_length)
		
		//Limita a camera para ela não sair da sala
		_x1 = clamp(_x1, 0, room_width - global.view_widht)
		_y1 = clamp(_y1, 0, room_height - global.view_height)
		
		var _cam_x = camera_get_view_x(view_camera[0])
		var _cam_y = camera_get_view_y(view_camera[0])

		//Deixando a camera suave
		var _xx = lerp(_cam_x, _x1, .1)
		var _yy = lerp(_cam_y, _y1, .1)
		
		//Aplicando na camera
		camera_set_view_pos(view_camera[0], _xx, _yy)
		
}
