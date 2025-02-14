/// @description Desenhando o Grid
if (obj_mouse.state = "drag" or obj_mouse.state = "paint")
{
draw_set_alpha(.5)
//Desenhando linhas
for (var i = 0; i < lins; i++)
{
	draw_line(0, i * grid, room_width, i * grid)	
}

//Desenhando colunas
for (var j = 0; j < cols; j++)
{
	draw_line(j * grid, 0, j * grid, room_height)
}

draw_set_alpha(1)
}