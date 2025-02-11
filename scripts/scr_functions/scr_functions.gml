function screen_shake(_len, _time)
{
	with(obj_camera)
	{
		shake_length	= _len
		shake_time = _time
		alarm[0] = shake_time
	}
}

function player_take_damage()
{
	with (obj_helper)
		{
			if (timer <= 0)
		{
			screen_shake(30,20)
			life--;
			timer = dmg_timer
		}
	}
}