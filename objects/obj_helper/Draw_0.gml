draw_self()
if (key and instance_exists(obj_zip))
{
	draw_sprite(spr_key,0,x,y-24)
}
draw_text(x,y-10,"cooldown"+string(folder_cooldown))
draw_text(x,y-30,"timer"+string(folder_timer))