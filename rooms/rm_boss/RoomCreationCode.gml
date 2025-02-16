audio_stop_all()
audio_play_sound(snd_breakdown,100,1);

global.course_name ="The Bug"
if file_exists("checkpoint.ini")
{
	file_delete("checkpoint.ini")
}
global.paint_uses = 0;