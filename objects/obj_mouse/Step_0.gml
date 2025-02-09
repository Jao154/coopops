/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
//Seguindo o mouse se eu estou em cima dele

if position_meeting(mouse_x, mouse_y, obj_programa_parent)
{
	if mouse_check_button(mb_left) 
	{
		seg = 1
		cursor_sprite = spr_pmouse_drag
	}
	else 
	{
		seg = 0
		cursor_sprite = spr_pmouse
	}
}
// se o mouse estiver no bug a fase reseta
if position_meeting(mouse_x,mouse_y,obj_bug)
{
	if (lose == false)
	{
		lose = true
		alarm[0] = 60;
	}
}