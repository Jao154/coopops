audio_stop_all()
audio_play_sound(snd_Past_Sadness,100,1);
global.course_name ="Eraser.exe"

if !file_exists("checkpoint.ini")
{
	global.paint_uses = 10;
}