/// @description
camera_set_view_size(view_camera[0], global.view_widht, global.view_height)

//Segue o alvo da camera só se ele existir
if instance_exists(view_target)
{
		//Segue o jogador o colocando no meio da tela
		var _x1 = view_target.x - global.view_widht/2
		var _y1 = view_target.y - global.view_height/2
		
		//Limita a camera para ela não sair da sala
		_x1 = clamp(_x1, 0, room_width - global.view_widht)
		_y1 = clamp(_y1, 0, room_height - global.view_height)
		
		//Aplicando na camera
		camera_set_view_pos(view_camera[0], _x1, _y1)
		
}
