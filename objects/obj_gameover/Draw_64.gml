//----TEMPORIZADOR------
if (lose)
{
	draw_set_font(global.font1)
	draw_set_color(c_red)
	draw_text_transformed(window_get_width()/2,0,showtime,15,15,0)	
	
	draw_set_font(-1)
	draw_set_color(-1)	
}

//------