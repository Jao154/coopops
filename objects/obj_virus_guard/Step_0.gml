state_machine();
if (collision_circle(x,y,60,obj_helper,false,false) and obj_helper.state != "folder")
{
	state = "chase"
	helper_in = true;
}
else if (obj_mouse.state != "antivirus" and point_in_circle(mouse_x,mouse_y,x,y,60))
{
	state = "chase"
	mouse_in = true;
}
else
{
	helper_in = false;
	mouse_in = false;
	if state != "patrolling"
	state = "returning"
}

//Dano se não posso ser arrastado
no_drag();

 
//mostrando a quem deve dar dano
antivirus_id();


//voltando a escala original
spring_return(0.05,0.05);

//Morrendo
die();	