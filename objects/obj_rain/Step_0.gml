if (y > room_height + 64)
{
	instance_destroy(id)
}
if position_meeting(x,y,obj_helper)
{
	with (obj_helper)
		{
			if (timer <= 0)
			{
				screen_shake(30,20)
				global.helper_life--;
				timer = dmg_timer
			}
		}
	instance_destroy(id);
}