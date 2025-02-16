if (obj_mouse.state == "antivirus")
{
	audio_play_sound(sfx_hurt_stalker, 0, 0, , , random_range(0.8,1.2))
	image_xscale = 2;
	image_yscale = 2;
	id.life--;
}