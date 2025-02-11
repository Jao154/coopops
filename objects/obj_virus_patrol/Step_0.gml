if position_meeting(mouse_x,mouse_y,id) && obj_mouse.state != "antivirus"
{
	obj_mouse.state ="mouse_dmg"

}
//mostrando a quem deve dar dano
if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
{
	obj_mouse.enemy_id = id;
}
state_machine();

antivirus_id();

//voltando a escala original
spring_return(0.05,0.05)
//me destruindo
die();
	

	//aplicando
direction = image_angle