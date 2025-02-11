var _dir = point_direction(x,y,obj_helper.x,obj_helper.y) + 180
shot_timer--;
direction = _dir;
image_angle = direction;



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
state_machine();