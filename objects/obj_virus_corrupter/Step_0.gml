//-----Olhando para o helper--------
var _dir = point_direction(x,y,obj_helper.x,obj_helper.y) + 180
shot_timer--;
direction = _dir;
image_angle = direction;

state_machine()

die(); // morrendo

drag("moving");//Sendo arrastado

antivirus_id();//Id para o antivirus

spring_return(0.05,0.05)//Retornando a escala
