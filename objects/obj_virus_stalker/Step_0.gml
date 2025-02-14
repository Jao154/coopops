state_machine();
if (state != "die") drag("following")

//mostrando a quem deve dar dano
antivirus_id();

//voltando a escala original
spring_return(0.05,0.05)

//me destruindo
die();
if (seg = 1)
{
	obj_mouse.state = "drag_virus"
}