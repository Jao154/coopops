if sprite_index != spr_stalker_flame exit
if (obj_helper.state != "folder")
{
	move_towards_point(obj_helper.x,obj_helper.y-6,0.8)
}
else
{
	move_towards_point(mouse_x,mouse_y,0.8)
}
if life <= 0 instance_destroy(id)
spring_return(0.05,0.05)

