//-----Olhando para o helper--------
var _dir = point_direction(x,y,obj_helper.x,obj_helper.y) + 180
shot_timer--;
direction = _dir;
image_angle = direction;

state_machine()

die(); // morrendo

if (state != "die") drag("moving");//Sendo arrastado
if (seg = 1)
{
	obj_mouse.state = "drag_virus"
}
spring_return(0.05,0.05)//Retornando a escala
