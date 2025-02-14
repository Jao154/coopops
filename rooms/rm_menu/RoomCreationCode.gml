audio_stop_all()
audio_play_sound(snd_Vibing_Over_Venus,100,1);
global.course_name ="Menu"
global.virus_count = 0;

if (file_exists("checkpoint.ini"))
{
	file_delete("checkpoint.ini");
}
global.paint_uses = 10;