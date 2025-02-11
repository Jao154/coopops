if position_meeting(mouse_x,mouse_y,id) && obj_mouse.state != "antivirus"
{
	obj_mouse.state ="mouse_dmg"

}
//mostrando a quem deve dar dano
if position_meeting(mouse_x,mouse_y,id) and obj_mouse.state = "antivirus"
{
	obj_mouse.enemy_id = id;
}


//voltando a escala original
image_xscale = lerp(image_xscale,1,0.3)
image_yscale = lerp(image_yscale,1,0.3)


//me destruindo
if life <= 0 instance_destroy(id);
	
	
//checando se colide
var check_below = collision_point(x,y+1,obj_solid,0,0);
var check_above = collision_point(x,y-1,obj_solid,0,0);
var check_right = collision_point(x+1,y,obj_solid,0,0);
var check_left = collision_point(x-1,y,obj_solid,0,0);

//não colide
var nothing = noone;

//checando se colide apenas com um
if (check_below != nothing and check_above == nothing and check_right == nothing and check_left == nothing) {current_side = "botton"}
if (check_below == nothing and check_above != nothing and check_right == nothing and check_left == nothing) {current_side = "top"}
if (check_below == nothing and check_above == nothing and check_right != nothing and check_left == nothing) {current_side = "right"}
if (check_below == nothing and check_above == nothing and check_right == nothing and check_left != nothing) {current_side = "left"}

//se não estou colidindo, mudo minha direção
if (check_below == nothing and check_above == nothing and check_right == nothing and check_left == nothing)
{
	//se estava no topo vou para direita...
	switch(current_side) 
	{
		case "top": current_side = "right"; break;
		case "right": current_side = "botton"; break;
		case "botton": current_side = "left"; break;
		case "left": current_side = "top"; break;
	}
}
		//girando
		switch(current_side)
		{
			case "top": image_angle = 180; break;
			case "botton": image_angle = 0; break;
			case "left": image_angle = -90; break;
			case "right": image_angle = 90; break;
			
		}
	//aplicando
direction = image_angle