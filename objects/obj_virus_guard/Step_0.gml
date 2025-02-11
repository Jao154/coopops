state_machine();
if collision_circle(x,y,60,obj_helper,false,false) or (obj_mouse.state != "antivirus" and point_in_circle(mouse_x,mouse_y,x,y,60))
{
	state = "chase"
}
else
{
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