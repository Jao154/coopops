/// @description
//Desenha o paint onde o jogador pode pintar
if state = "paint" && paint_uses > 0
{
		var _grid = 16
		//Alinha na grid
		var _x = mouse_x div _grid * _grid
		var _y = mouse_y div _grid * _grid
		
		draw_sprite_ext(spr_color, 0, _x, _y, 1, 1, 0, c_white, .5)
}