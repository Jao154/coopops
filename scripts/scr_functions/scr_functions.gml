function screen_shake(_len, _time)
{
	with(obj_camera)
	{
		shake_length	= _len
		shake_time = _time
		alarm[0] = shake_time
	}
}