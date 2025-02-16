if (image_index > 1)
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
}