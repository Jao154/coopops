if (obj_mouse.state == "antivirus" and state == "idle")
{
	audio_play_sound(sfx_hurt_boss, 0, 0, , , random_range(0.8,1.2))
	life--;
	image_xscale = 2;
	image_yscale = 2;
}